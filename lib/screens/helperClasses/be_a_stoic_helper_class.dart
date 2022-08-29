import 'package:http/http.dart' as http;
import 'dart:convert';

class BeAStoic {
  static String stoicQuote = "🔥Flick the screen & see what comes in your feed🔥";
  static String stoicQuoteAuthor = "- Quotes & Facts";
  static String stoicQuoteApi = "https://stoicquotesapi.com/v1/api/quotes/random";

  static String stoicQuoteBgImgUrl =
      'https://source.unsplash.com/random/?nature,tiger,study,walk,running,adventure,life,lion,wolf,grow,stoic,serious,bulb,history,idea,buildings,skyscrappers,fresh,discipline,hardwork,work,time,clock,notes,pen,notebook,paper,thinking,bright,puzzle';

  static Future<String> getData() async {
    http.Response response;
    try {
      response = await http.get(Uri.parse(stoicQuoteApi));
    } catch (e) {
      throw "No Internet!";
    }

    if (response.statusCode == 200) {
      Map stoicQuoteMap = jsonDecode(response.body);
      stoicQuote = stoicQuoteMap["body"].trim();
      stoicQuoteAuthor = "- " + stoicQuoteMap["author"].trim();
    }

    return "success";
  }
}
