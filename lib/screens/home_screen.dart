import 'dart:async';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'helperClasses/home_to_other_screen_navigator.dart';
import 'helperClasses/navigation_drawer_helper_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const style = TextStyle(
    fontSize: 25,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
  );
  static List<String> contentList = [
    "Motivation",
    "Number facts",
    "Be A Stoic",
    "Cat facts",
    "Philosophy",
    "Advice\nfor a better life",
    "Random facts",
  ];

  static List<String> imgLink = [
    "assets/motivation_front_pg.jpg",
    "assets/number_facts_front_pg.jpg",
    "assets/be_a_stoic_front_pg.jpg",
    "assets/cat_facts_front_pg.jpg",
    "assets/philosophy_front_pg.jpg",
    "assets/advice_front_pg.jpg",
    "assets/facts_front_pg.jpg",
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late StreamSubscription<DataConnectionStatus> listener;

  checkInternetHelper(var index) async {
    DataConnectionStatus status = await checkInternet();

    if (status == DataConnectionStatus.connected) {
      Navigator.of(context).pushNamed("/" + HomeScreen.contentList[index]);
    } else {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      final style1 = TextStyle(
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontSize: height * 0.04,
        fontWeight: FontWeight.bold,
      );
      final style2 = TextStyle(
        color: Colors.white,
        fontFamily: 'Montserrat',
        fontSize: height * 0.03,
        fontWeight: FontWeight.bold,
      );
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: SizedBox(
              height: height * 0.3,
              width: width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.wifi_off_sharp,
                      color: Colors.black, size: height * 0.07),
                  Text('No Internet', style: style1),
                  SizedBox(
                    width: width * 0.3,
                    child: TextButton(
                      onPressed: () {
                        // pop previous screen
                        Navigator.of(context).pop();
                        // while retrying for internet connection
                        checkInternetHelper(index);
                      },
                      child: Text(
                        'Retry',
                        style: style2,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const StadiumBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }

  @override
  void dispose() {
    listener.cancel();
    super.dispose();
  }

  checkInternet() async {
    // Simple check to see if we have internet
    // print("The statement 'this machine is connected to the Internet' is: ");
    // print(await DataConnectionChecker().hasConnection);
    // returns a bool

    // We can also get an enum value instead of a bool
    // print("Current status: ${await DataConnectionChecker().connectionStatus}");
    // prints either DataConnectionStatus.connected
    // or DataConnectionStatus.disconnected

    // This returns the last results from the last call
    // to either hasConnection or connectionStatus
    // print("Last results: ${DataConnectionChecker().lastTryResults}");

    // actively listen for status updates
    // this will cause DataConnectionChecker to check periodically
    // with the interval specified in DataConnectionChecker().checkInterval
    // until listener.cancel() is called
    listener = DataConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case DataConnectionStatus.connected:
          // print('Data connection is available.');
          break;
        case DataConnectionStatus.disconnected:
          // print('You are disconnected from the internet.');
          break;
      }
    });

    return await DataConnectionChecker().connectionStatus;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'QUOTES  &  FACTS',
            style: HomeScreen.style,
          ),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: HomeScreen.contentList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {
                await checkInternetHelper(index);
              },
              child: ScreenNavigator(
                screenType: HomeScreen.contentList[index],
                screenTypeImgUrl: HomeScreen.imgLink[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
