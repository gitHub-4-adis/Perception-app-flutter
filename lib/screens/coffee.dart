import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: ,
      appBar: AppBar(
        title: Text(
          "To Fantastic You 🥰",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Dear Reader, Welcome to Perception community! How many times has it happened that you struggle to assert self control & walk down the right path? and how many times do you actually succeed? 🙄 Awkward, right?\n\n Well, here's the thing. The pattern we keep repeating is..\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05, fontFamily: 'Montserrat-r'),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 15,
                ),
                title: Text(
                  "We misspend whole day, doing whatever we want to fulfill our current desires, being instantly gratificatified.",
                  style: TextStyle(fontSize: 20, fontFamily: 'montserrat-r'),
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 15,
                ),
                title: Text(
                  "We take our time for granted & think that we can work later, we'll wrapt it quick.",
                  style: TextStyle(fontSize: 20, fontFamily: 'Montserrat-r'),
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 15,
                ),
                title: Text(
                  "We lose time & think what have we done. We could've been productive instead of this.",
                  style: TextStyle(fontSize: 20, fontFamily: 'Montserrat-r'),
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 15,
                ),
                title: Text(
                  "Now we think, we'll be transformed to a whole new personality tomorrow morning & take life seriously.😤",
                  style: TextStyle(fontSize: 20, fontFamily: 'Montserrat-r'),
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 15,
                ),
                title: Text(
                  "Finally, we repeat above steps just to end up repeating above steps!! Like a loop.\n\n",
                  style: TextStyle(fontSize: 20, fontFamily: 'Montserrat-r'),
                  textAlign: TextAlign.start,
                ),
              ),
              Text(
                "Please don't be low as it happens to all of us!😅. We'll not say/ promise anything like ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05, fontFamily: 'Montserrat-r'),
              ),
              Text(
                "\'Perception is for your rescue or it is your solution in such cases\'\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Montserrat-r'),
              ),
              Text(
                "It says only one thing to its precious readers.\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05, fontFamily: 'Montserrat-r'),
              ),
              Text(
                "Be Curious and Do The Right Thing With Whatever You Have, Where You Are and most importantly Who You Are. Past Is Gone. Close Your Eyes. And Act Now.\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Montserrat-r'),
              ),
              Text(
                "We genuinely thank our readers for downloading this app. In general it allows you to explore random topics to gain some curiosity of reading, bit by bit and giving you the mentality of keep moving forward. Always remember that there is no secret and no reason to do the right thing. You always have \n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05, fontFamily: 'Montserrat-r'),
              ),
              Text(
                "2 choices\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Montserrat-r'),
              ),
              Text(
                "So stay blessed and be curious. Until next time! 😀",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05, fontFamily: 'Montserrat-r'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
