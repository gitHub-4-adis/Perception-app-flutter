import 'package:http/http.dart' as http;
import 'dart:convert';

class Facts {
  static String fact = "🔥Flick the screen & see what comes in your feed🔥";
  static String factGenre = "- Quotes & Facts";
  static String factApi =
      "https://uselessfacts.jsph.pl/random.json?language=en";

  static String factsBgImgUrl =
      'https://source.unsplash.com/random/?facts,surprise,party,gift,present,happy,nightlight,new,shocking,shock,unbelievable,outstanding,excellent,awe,extreme,skyscrapper,citylights,fruit,dryfruit,paper';

  static Future<String> getData() async {
    http.Response response;
    try {
      response = await http.get(Uri.parse(factApi));
    } catch (e) {
      throw "No Internet!";
    }

    if (response.statusCode == 200) {
      Map factMap = jsonDecode(response.body);
      fact = factMap["text"].trim();
      factGenre = "- Random Fact";
    }

    return "success";
  }
}
