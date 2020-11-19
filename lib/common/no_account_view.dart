import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountView extends StatelessWidget {
  const NoAccountView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        SizedBox(
          width: getMarginNormal(),
        ),
        Text(
          "Sign up",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
