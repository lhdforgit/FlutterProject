import 'package:commerce_app/common/custom_suffixIon.dart';
import 'package:commerce_app/common/form_error.dart';
import 'package:commerce_app/common/no_account_view.dart';
import 'package:commerce_app/common/primary_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordBody();
  }
}

class _ForgotPasswordBody extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildTextFormEmailValidate(),
          SizedBox(
            height: activitySmall(),
          ),
          Row(
            children: List.generate(
                errors.length,
                (index) => FormError(
                      errors: errors,
                    )),
          ),
          SizedBox(
            height: activityLarge(),
          ),
          PrimaryButton(
            title: "Continue",
            onClick: () {
              if (_formKey.currentState.validate()) {
                // Do what you want to do
              }
            },
          ),
          SizedBox(
            height: activityLarge(),
          ),
          NoAccountView()
        ],
      ),
    );
  }

  TextFormField buildTextFormEmailValidate() {
    return TextFormField(
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kEmailNullError)) {
            setState(() {
              errors.remove(kEmailNullError);
            });
          } else if (emailValidatorRegExp.hasMatch(value) &&
              errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              errors.add(kEmailNullError);
            });
          } else if (value.isNotEmpty &&
              !emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.add(kInvalidEmailError);
            });
          }
          return null;
        },
        textInputAction: TextInputAction.go,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: kPrimaryColor),
          labelText: "Email",
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIon(svgIcon: "assets/icons/Mail.svg"),
        ));
  }
}
