import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotes/screens/contentFiles/motivation.dart';
import 'package:quotes/screens/contentFiles/philosophy.dart';
import 'package:quotes/screens/contentFiles/advice.dart';
import 'package:quotes/screens/contentFiles/number_facts.dart';
import 'package:quotes/screens/contentFiles/cat_facts.dart';
import 'package:quotes/screens/contentFiles/facts.dart';
import 'package:quotes/screens/contentFiles/be_a_stoic.dart';
import 'screens/contact.dart';
import 'screens/rate_on_aptoide.dart';
import 'screens/privacy_policy.dart';
import 'screens/coffee.dart';
import 'screens/about_us.dart';
import 'screens/home_screen.dart';
import 'themes/app_themes.dart';

void main() {
  // disable landscape mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // call the main ui thread
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/Motivation": (context) => const MotivationQuotesScreen(),
        "/Number facts": (context) => const NumberFactsScreen(),
        "/Be A Stoic": (context) => const BeAStoicScreen(),
        "/Cat facts": (context) => const CatFactsScreen(),
        "/Philosophy": (context) => const PhilosophyQuotesScreen(),
        "/Advice\nfor a better life": (context) => const AdviceScreen(),
        "/Random facts": (context) => const FactsScreen(),
        "/Contact": (context) => const Contact(),
        "/Rate on Aptoide": (context) => const RateOnAptoide(),
        "/Privacy Policy": (context) => const PrivacyPolicy(),
        "/About Us": (context) => const AboutUs(),
        "/Coffee": (context) => const Coffee(),
      },
    );
  }
}
