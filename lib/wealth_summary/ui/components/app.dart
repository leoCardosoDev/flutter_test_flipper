import 'package:flutter/material.dart';

import '../wealth_summary.dart';

class App extends StatelessWidget {
  final primaryColor = Color.fromRGBO(59, 92, 184, 1);
  final primaryColorDark = Color.fromRGBO(232, 99, 119, 1);
  final backgroundColor = Color.fromRGBO(232, 235, 246, 1);
  final accentColor = Color.fromRGBO(96, 99, 119, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flipper Flutter Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
        accentColor: primaryColor,
        backgroundColor: backgroundColor,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
          headline2: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
          subtitle1: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: accentColor,
          ),
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(primary: primaryColor),
          buttonColor: primaryColor,
          splashColor: primaryColorDark,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: WealthSummary(),
    );
  }
}
