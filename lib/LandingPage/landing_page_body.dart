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
        return ListView(
          controller: context.read<AutoScroll>().scrollController,
          children: [
            const IntroMobile(),
            const AboutUsMobile(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1, vertical: screenWidth * 0.22),
              child: const ContactUsForm(),
            ),
            const Footer(),
          ],
        );
      }
    }));
  }
}
