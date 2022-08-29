import 'package:bored/bored.dart';

class Activity {
  static String activity = "🔥Flick the screen & see what comes in your feed🔥";
  static String activityGenre = "- Quotes & Facts";

  static String activityBgImgUrl =
      'https://source.unsplash.com/random/?education,alarm,fun,art,music,food,jump,kids,creativity,paintings,achieve,rainbow,design,skills,abstract,concrete,housework,calligraphy,wish,love,emotions,emoji,joy,pets,carwash';

  static getData() async {
    Map getActivityMap;
    try {
      getActivityMap = await getActivity();
    } catch (e) {
      throw "No Internet!";
    }

    activityGenre = getActivityMap["Type"].trim();
    activity = getActivityMap["Activity"].trim();

    if (activityGenre != "") {
      activityGenre = '- ' + activityGenre;
    } else {
      activityGenre = "- Wiki";
    }

    return "success";
  }
}
