import 'dart:ui';

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.875,
      child: Stack(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth * 0.1,
            ),
            Image.asset(
              'assets/images/aboutus.png',
              height: screenWidth * 0.5,
              width: screenWidth * 0.5,
            ),
            aboutUsBodyText(context, screenWidth, screenHeight),
          ],
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 4),
        ),
      ]),
    );
  }
}

Widget aboutUsBodyText(BuildContext context, double width, double height) {
  TextStyle? displayStyle = width > 1200
      ? Theme.of(context).textTheme.displayLarge
      : Theme.of(context).textTheme.displayMedium;
  TextStyle? bodyStyle = width > 1200
      ? Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18)
      : Theme.of(context).textTheme.bodyMedium;
  TextStyle? labelStyle = width > 1200
      ? Theme.of(context).textTheme.labelLarge
      : Theme.of(context).textTheme.labelMedium;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "About Us",
        style: displayStyle,
      ),
      const SizedBox(
        height: 12,
      ),
      Text(
        "We are Avengers (of developer 😎)",
        style: bodyStyle,
      ),
    ],
  );
}
