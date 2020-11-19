import 'package:commerce_app/common/custom_suffixIon.dart';
import 'package:commerce_app/common/form_error.dart';
import 'package:commerce_app/common/no_account_view.dart';
import 'package:commerce_app/common/primary_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'forgot_password_form.dart';

class Body extends StatefulWidget {
  @override
  _StateBody createState() => _StateBody();
}

class _StateBody extends State<Body> {
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(36),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getMarginNormal(),
                ),
                Text(
                  "Please enter your Email we will send you a link to reset your password",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: activityLarge(),
                ),
                ForgotPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

