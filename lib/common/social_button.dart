import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key key, this.icon}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: activityNormal()),
      width: 40,
      height: 40,
      padding: EdgeInsets.all(activitySmall()),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF5F6F9),
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
