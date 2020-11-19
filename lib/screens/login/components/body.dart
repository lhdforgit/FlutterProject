import 'package:commerce_app/common/no_account_view.dart';
import 'package:commerce_app/constants.dart';
import 'package:commerce_app/size_config.dart';
import 'package:commerce_app/themes.dart';
import 'package:flutter/material.dart';

import 'login_form.dart';

class Body extends StatefulWidget {
  @override
  _StateBody createState() => _StateBody();
}

class _StateBody extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(activityLarge()),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "TOKOTO",
                    style: textTheme().headline1,
                  ),
                  SizedBox(
                    height: activityLarge(),
                  ),
                  LoginForm(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
