import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';

class CustomSuffixIon extends StatelessWidget {
  const CustomSuffixIon({Key key, this.svgIcon}) : super(key: key);
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(activityNormal()),
      child: SvgPicture.asset(
        svgIcon,
        height: activityNormal(),
      ),
    );
  }
}
