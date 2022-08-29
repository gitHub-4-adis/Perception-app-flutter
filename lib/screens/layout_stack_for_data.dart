import 'package:flutter/material.dart';

class LayoutStackForData extends StatefulWidget {
  final String quote;
  final String author;
  final String imgUrl;
  const LayoutStackForData(
      {Key? key,
      required this.imgUrl,
      required this.quote,
      required this.author})
      : super(key: key);

  @override
  State<LayoutStackForData> createState() => _LayoutStackForDataState();
}

class _LayoutStackForDataState extends State<LayoutStackForData> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    var style1 = TextStyle(
      fontSize: (height * 0.03),
      fontFamily: 'CinzelDecorative',
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    var style2 = TextStyle(
      fontFamily: 'Inspiration',
      fontSize: (height * 0.06),
      color: Colors.white,
    );

    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,

              // 1. extract image w/ unsplash free random images based on image tag of particular card
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child:
                  Image.network(
                  widget.imgUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.amber,
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.6,
            width: width * 0.85,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.7),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.format_quote,
                      size: height * 0.1,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.quote,
                    textAlign: TextAlign.center,
                    style: style1,
                  ),
                  SizedBox(height: height * 0.1),
                  Text(widget.author,
                      textAlign: TextAlign.center, style: style2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
