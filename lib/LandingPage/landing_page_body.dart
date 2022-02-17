import 'package:flutter/material.dart';
import 'landing_page_body_text.dart';

class LandingPageBody extends StatelessWidget {
  const LandingPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            landingPageBodyText(context, constraints.biggest.width),
            Expanded(child: Image.asset('assets/images/developer.png')),
          ],
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            landingPageBodyText(context, constraints.biggest.width),
            Expanded(child: Image.asset('assets/images/developer.png')),
          ],
        );
      }
    }));
  }
}
