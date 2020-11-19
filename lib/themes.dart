import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData themes() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      textTheme: textTheme(),
      appBarTheme: appBarTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}

TextTheme textTheme() {
  return TextTheme(
    headline1: TextStyle(fontSize: 29, color: kPrimaryColor, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 15, color: kTextColor),
    headline5: TextStyle(fontSize: 17, color: kTextColor),
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      elevation: 0,
      color: Colors.white,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      brightness: Brightness.light,
      textTheme: TextTheme(
          headline6: TextStyle(
        color: Color(0XFF8B8B8B),
        fontSize: 20,
      )));
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10));
}
