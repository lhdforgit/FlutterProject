import 'package:commerce_app/screens/forgor_password/component/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot password",
          textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
    );
  }
}
