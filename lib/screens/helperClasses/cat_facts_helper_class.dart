import 'package:http/http.dart' as http;
import 'dart:convert';

class CatFacts {
  static String catFact =
      "🔥Flick the screen & see what comes in your feed🔥";
  static String catFactGenre = "- Quotes & Facts";
  static String catFactApi = "https://catfact.ninja/fact";

  static String catFactsBgImgUrl =
      'https://source.unsplash.com/random/?cats,kittens,feline,kitties,cat,cutecat,felis,catus';

  static Future<String> getData() async {
    http.Response response;
    try {
      response = await http.get(Uri.parse(catFactApi));
    } catch (e) {
      throw "No Internet!";
    }

    if (response.statusCode == 200) {
      Map catFactMap = jsonDecode(response.body);
      catFact = catFactMap["fact"].trim();
      catFactGenre = "- Feline";
    }

    return "success";
  }
}
