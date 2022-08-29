import 'package:flutter/material.dart';

class RateOnAptoide extends StatelessWidget {
  const RateOnAptoide({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      appBar: AppBar(
        title: Text("Rate On Aptoide"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              "some content",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
