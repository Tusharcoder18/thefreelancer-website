import 'package:flutter/material.dart';
import 'package:freelanceapp/LandingPage/about_us.dart';
import 'package:freelanceapp/LandingPage/contact_us.dart';
import 'package:freelanceapp/LandingPage/intro.dart';
import 'package:freelanceapp/auto_scroll.dart';
import 'package:provider/provider.dart';

import 'footer.dart';

class LandingPageBody extends StatelessWidget {
  const LandingPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return SizedBox(
          height: screenHeight * 0.875,
          child: ListView(
            controller: context.read<AutoScroll>().scrollController,
            shrinkWrap: true,
            children: const [Intro(), AboutUs(), ContactUs(), Footer()],
          ),
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            landingPageBodyText(context, screenWidth, screenHeight),
            Expanded(child: Image.asset('assets/images/developer.png')),
          ],
        );
      }
    }));
  }
}

Widget landingPageBodyText(BuildContext context, double width, double height) {
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
      // विचार असलियत
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
