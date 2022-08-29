import 'package:http/http.dart' as http;
import 'dart:convert';

class Motivation {
  static String motivationQuote = "🔥Flick the screen & see what comes in your feed🔥";
  static String motivationQuoteAuthor = "- Quotes & Facts";
  static String motivationQuoteApi =
      "https://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=jsonp&jsonp=?";
  static String motivationBgImgUrl =
      'https://source.unsplash.com/random/?nature,tiger,fitness,study,walk,running,adventure,life,lion,wolf,grow,discipline,forward,muscles,hardship,hardwork,alone,lonewolf,work,isolated,mountains,working,busy,grind,effort,skills,growth,jogging,gym,focus,goal,aim,occupied,sunrise,dawn,direction,corrent,right,wrong,evening';

  static getData() async {

    http.Response response;
    try {
      response = await http.get(Uri.parse(motivationQuoteApi));
    } catch (e) {
      throw 'No Internet!';
    }

    if (response.statusCode == 200) {
      String newBody = response.body.substring(2, response.body.length - 1);
      Map quoteAuthorMap = jsonDecode(newBody);
      motivationQuote = quoteAuthorMap["quoteText"].trim();
      motivationQuoteAuthor = quoteAuthorMap["quoteAuthor"].trim();
      if (motivationQuoteAuthor == "") {
        motivationQuoteAuthor = "- WiKi";
      } else {
        motivationQuoteAuthor = '- ' + motivationQuoteAuthor;
      }
    }
    return 'success';
  }
}
