import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenNavigator extends StatelessWidget {
  final String screenType;
  final String screenTypeImgUrl;
  const ScreenNavigator({Key? key, required this.screenType, required this.screenTypeImgUrl}) : super(key: key);
  static const style = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              screenTypeImgUrl,
              width: 400,
              height: 190,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.45),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Text(
            screenType,
            textAlign: TextAlign.center,
            style: GoogleFonts.nothingYouCouldDo(
              textStyle: style,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
