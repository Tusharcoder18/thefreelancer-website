import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.grey.withOpacity(0.35),
      height: screenHeight * 0.875,
      child: Row(
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
          Expanded(child: aboutUsBodyText(context, screenWidth, screenHeight)),
          SizedBox(
            width: screenWidth * 0.1,
          ),
        ],
      ),
    );
  }
}

class AboutUsMobile extends StatelessWidget {
  const AboutUsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.grey.withOpacity(0.35),
      height: screenHeight * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Us",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(
                  width: screenWidth * 0.8,
                  child: Text(
                    "We are Avengers of freeelance developers 😎. Just Kidding. We are a team of young enthusiastic professional nerds who are experts in Flutter Application Devlopment. So let us know your requirements and we will create it for you in no time!",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/aboutus.png',
              height: screenWidth * 0.5,
              width: screenWidth * 0.5,
            ),
          ),
        ],
      ),
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
        "We are Avengers of freeelance developers 😎. Just Kidding. \nWe are a team of young enthusiastic professional nerds who are experts in Flutter Application Devlopment. So let us know your requirements and we will create it for you in no time!",
        style: bodyStyle,
      ),
    ],
  );
}
