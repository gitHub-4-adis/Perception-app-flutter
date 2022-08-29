import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      appBar: AppBar(
        title: Text(
          "About",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Image.asset(
                'assets/about_us.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Version 1.0.0",
              style: TextStyle(fontSize: 20,),
            ),
            SizedBox(height: 20,),
            Divider(thickness: 1, color: Colors.grey,),

            SizedBox(height: 20,),
            Text(
              "Copyrighted 2022 - present",
              style: TextStyle(fontSize: 20,),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Text(
              "No Profit Apps",
              style: TextStyle(fontSize: 20,),
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }
}
