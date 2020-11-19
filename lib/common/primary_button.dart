import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key key, this.title, this.onClick}) : super(key: key);
  final String title;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth * 0.8,
      height: 56,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: onClick,
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: activityNormal()),
        ),
      ),
    );
  }
}
