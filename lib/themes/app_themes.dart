import 'package:flutter/material.dart';

class AppTheme {
  static lightTheme(BuildContext context) => ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    listTileTheme: ListTileThemeData(textColor: Colors.black, iconColor: Colors.black),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white,),
    textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black,),),
  );

  static darkTheme(BuildContext context) => ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    appBarTheme: AppBarTheme(
      color: Colors.grey.shade900,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        color: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    listTileTheme: ListTileThemeData(textColor: Colors.white, iconColor: Colors.white),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.grey.shade900,),
    textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white,),),
    
  );
}
