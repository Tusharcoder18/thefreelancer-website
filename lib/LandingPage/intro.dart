import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.875,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth * 0.1,
          ),
          introBodyText(context, screenWidth, screenHeight),
          Image.asset(
            'assets/images/developer.png',
            height: screenWidth * 0.5,
            width: screenWidth * 0.5,
          ),
        ],
      ),
    );
  }
}

Widget introBodyText(BuildContext context, double width, double height) {
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
    // mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: height * 0.2,
      ),
      Text(
        'Convert your IDEA \ninto REALITY',
        style: displayStyle,
      ),
      const SizedBox(
        height: 12,
      ),
      Text(
        'We are a team of nerds who can develop your application for any platform \navailable right now! It\'s called hybrid applications btw.',
        style: bodyStyle,
      ),
      const SizedBox(
        height: 20,
      ),
      MaterialButton(
        onPressed: () {},
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Contact Us',
            style: labelStyle,
          ),
        ),
        color: Colors.white,
      ),
    ],
  );
}
