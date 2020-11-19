import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../themes.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key key, this.text, this.image}) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'TOKOTO',
          style: textTheme().headline1,
        ),
        Text(text, textAlign: TextAlign.center,),
        Image.asset(
          image,
          height: 300,
          width: 300,
          fit: BoxFit.fitHeight,
        )
      ],
    );
  }
}