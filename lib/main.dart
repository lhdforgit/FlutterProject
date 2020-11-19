import 'package:commerce_app/constants.dart';
import 'package:commerce_app/routes.dart';
import 'package:commerce_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:commerce_app/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themes(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
