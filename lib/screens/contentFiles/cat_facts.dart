import 'dart:async';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:flutter/material.dart';
import '../layout_stack_for_data.dart';
import '../helperClasses/cat_facts_helper_class.dart';
import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import '/transformers/transformers.dart';

class CatFactsScreen extends StatefulWidget {
  const CatFactsScreen({Key? key}) : super(key: key);

  @override
  State<CatFactsScreen> createState() => CatFactsScreenState();
}

class CatFactsScreenState extends State<CatFactsScreen> {
  late StreamSubscription<DataConnectionStatus> listener;

  @override
  void initState() {
    super.initState();
    checkInternetHelper();
  }

  checkInternetHelper() async {
    DataConnectionStatus status = await checkInternet();

    if (status == DataConnectionStatus.connected) {
      CatFacts.getData();
    } else {
      print(1);
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      final style1 = TextStyle(
          color: Colors.black,
          fontFamily: 'Montserrat',
          fontSize: height * 0.04,
          fontWeight: FontWeight.bold);
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
                  Text(
                    'No Internet',
                    style: style1,
                  ),
                  SizedBox(
                    width: width * 0.3,
                    child: TextButton(
                      onPressed: () {
                        // pop previous screen
                        Navigator.of(context).pop();
                        // while retrying for internet connection
                        checkInternetHelper();
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
    return Scaffold(
      body: TransformerPageView(
        itemCount: 1,
        loop: true,
        scrollDirection: Axis.vertical,
        transformer: transformers[1],
        onPageChanged: (index) async {
          checkInternetHelper();
        },
        itemBuilder: (context, index) {
          return LayoutStackForData(
            imgUrl: CatFacts.catFactsBgImgUrl,
            quote: CatFacts.catFact,
            author: CatFacts.catFactGenre,
          );
        },
      ),
    );
  }
}
