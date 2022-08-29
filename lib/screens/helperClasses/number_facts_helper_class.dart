import 'package:http/http.dart' as http;

class NumberFacts {
  static String numberFact =
      "🔥Flick the screen & see what comes in your feed🔥";
  static String numberFactGenre = "- Quotes & Facts";
  static String numberFactApi = "http://numbersapi.com/random";

  static String numberFactsBgImgUrl =
      'https://source.unsplash.com/random/?numbers,binary,computer,codes,arithmetic,programming';

  static Future<String> getData() async {
    http.Response response;
    try {
      response = await http.get(Uri.parse(numberFactApi));
    } catch (e) {
      throw "No Internet!";
    }

    if (response.statusCode == 200) {
      numberFact = response.body.trim();
      numberFactGenre = "- Mathematical";
    }

    return "success";
  }
}
