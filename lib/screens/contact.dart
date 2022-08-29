import 'dart:io';

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      appBar: AppBar(
        title: Text(
          "Contact Info",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey There!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "We are here to help our readers.\n",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child: Image.asset(
                'assets/contact_us.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Icon(Icons.mail_sharp, size: 20, color: Colors.orange),
            SizedBox(height: 10),
            Text(
              "temp.dev.00001@gmail.com",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
