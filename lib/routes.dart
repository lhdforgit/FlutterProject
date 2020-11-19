import 'package:commerce_app/screens/forgor_password/forgot_password_screen.dart';
import 'package:commerce_app/screens/login/login_screen.dart';
import 'package:commerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen()
};
