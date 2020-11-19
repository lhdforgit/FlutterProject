import 'package:commerce_app/common/primary_button.dart';
import 'package:commerce_app/constants.dart';
import 'package:commerce_app/routes.dart';
import 'package:commerce_app/screens/login/login_screen.dart';
import 'package:commerce_app/screens/splash/components/splash_content.dart';
import 'package:commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people connect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]["text"],
                    )),
            Row(
              children: List.generate(
                  splashData.length, (index) => buildDot(index: index)),
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            PrimaryButton(
              title: "Continue",
              onClick: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: currentIndex == index ? 10 : 6,
      width: currentIndex == index ? 10 : 6,
      decoration: BoxDecoration(
          color: currentIndex == index ? kPrimaryColor : kSecondaryColor,
          borderRadius:  currentIndex == index  ? BorderRadius.circular(5) :  BorderRadius.circular(3)),
    );
  }
}
