import 'package:http/http.dart' as http;
import 'dart:convert';

class Philosophy {
  static String philosophyQuote = "🔥Flick to see what comes in your feed🔥";
  static String philosophyQuoteAuthor = "- Quotes & Facts";
  static String philosophyQuoteApi =
      "https://api.fisenko.net/v1/quotes/en/random";
  static String philosophyBgImgUrl =
      'https://source.unsplash.com/random/?ocean,books,bulb,light,philosophy,thinking,alone,right,wrong,statue,art,candles,focus,history,historical,sky,freedom,thoughts,thinking,deep,knowledge,paper,calligraphy,stoic,free';

  static Future<String> getData() async {
    http.Response response;
    try {
      response = await http.get(Uri.parse(philosophyQuoteApi));
    } catch (e) {
      throw 'No Internet!';
    }
    if (response.statusCode == 200) {
      // fetch data
      Map quoteAuthorMap = jsonDecode(response.body);
      philosophyQuote = quoteAuthorMap["text"].trim();
      philosophyQuoteAuthor = quoteAuthorMap["author"]["name"].trim();

      if (philosophyQuoteAuthor == "") {
        philosophyQuoteAuthor = "- WiKi";
      } else {
        philosophyQuoteAuthor = '- ' + philosophyQuoteAuthor;
      }
    }
    return 'success';
  }
}
