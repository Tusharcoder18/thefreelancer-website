import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../auto_scroll.dart';

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
          Expanded(
            child: Image.asset(
              'assets/images/developer.png',
              // height: screenWidth * 0.5,
              // width: screenWidth * 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class IntroMobile extends StatelessWidget {
  const IntroMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
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
                  'Convert your IDEA \ninto REALITY',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: screenWidth * 0.8,
                  child: Text(
                    'We are a team of nerds who can develop your application for any platform \navailable right now! It\'s called hybrid applications btw.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () async {
                    // context
                    //     .read<AutoScroll>()
                    //     .scrollTo((screenHeight * 0.875) * 2);
                    var _url = "https://96umhjfmrv5.typeform.com/to/eXAqppuD";
                    await canLaunch(_url)
                        ? await launch(_url)
                        : throw 'Could not launch $_url';
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Let\'s talk!',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/developer.png',
              // height: screenWidth,
              // width: screenWidth,
            ),
          ),
        ],
      ),
    );
  }
}

Widget introBodyText(BuildContext context, double width, double height) {
  final screenHeight = MediaQuery.of(context).size.height;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: height * 0.2,
      ),
      Text(
        'Convert your IDEA \ninto REALITY',
        style: Theme.of(context).textTheme.displayLarge,
      ),
      const SizedBox(
        height: 12,
      ),
      Text(
        'We are a team of nerds who can develop your application for any platform \navailable right now! It\'s called hybrid applications btw.',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18),
      ),
      const SizedBox(
        height: 20,
      ),
      MaterialButton(
        onPressed: () async {
          // context.read<AutoScroll>().scrollTo((screenHeight * 0.875) * 2);
          var _url = "https://96umhjfmrv5.typeform.com/to/eXAqppuD";
          await canLaunch(_url)
              ? await launch(_url)
              : throw 'Could not launch $_url';
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Let\'s talk!',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        color: Colors.white,
      ),
    ],
  );
}
