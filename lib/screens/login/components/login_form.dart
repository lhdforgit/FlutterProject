import 'package:commerce_app/common/custom_suffixIon.dart';
import 'package:commerce_app/common/form_error.dart';
import 'package:commerce_app/common/primary_button.dart';
import 'package:commerce_app/common/social_button.dart';
import 'package:commerce_app/constants.dart';
import 'package:commerce_app/screens/forgor_password/forgot_password_screen.dart';
import 'package:commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatefulWidget {
  @override
  _StateLoginForm createState() => _StateLoginForm();
}

class _StateLoginForm extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String password;
  bool remember = false;

  void addError({String error}) {
    if (!error.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (error.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: activityLarge(),
          ),
          buildTextFormEmailValidate(),
          SizedBox(
            height: activityLarge(),
          ),
          buildTextFormPasswordValidate(),
          SizedBox(
            height: activitySmall(),
          ),
          FormError(
            errors: errors,
          ),
          SizedBox(
            height: activityNormal(),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember password"),
            ],
          ),
          SizedBox(
            height: activityNormal(),
          ),
          GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
            child: Text(
              "Forgot password?",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                  color: kPrimaryColor),
            ),
          ),
          SizedBox(
            height: activityLarge(),
          ),
          PrimaryButton(
            title: "Continue",
            onClick: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          ),
          SizedBox(
            height: activityLarge(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(
                icon: "assets/icons/google-icon.svg",
              ),
              SocialButton(
                icon: "assets/icons/twitter.svg",
              ),
              SocialButton(
                icon: "assets/icons/facebook-2.svg",
              )
            ],
          ),
          SizedBox(
            height: getMarginNormal(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              SizedBox(
                width: getMarginNormal(),
              ),
              Text(
                "Sign up",
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              )
            ],
          )
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
          labelText: "Email",
          labelStyle: TextStyle(color: kPrimaryColor),
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIon(svgIcon: "assets/icons/Mail.svg"),
        ));
  }

  TextFormField buildTextFormPasswordValidate() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPassNullError)) {
            setState(() {
              errors.remove(kPassNullError);
            });
          } else if (value.length >= 8 && errors.contains(kShortPassError)) {
            setState(() {
              errors.remove(kShortPassError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kPassNullError);
            });
          } else if (value.isNotEmpty &&
              value.length < 8 &&
              !errors.contains(kShortPassError)) {
            setState(() {
              errors.add(kShortPassError);
            });
          }
          return null;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(color: kPrimaryColor),
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIon(svgIcon: "assets/icons/Lock.svg"),
        ));
  }
}
