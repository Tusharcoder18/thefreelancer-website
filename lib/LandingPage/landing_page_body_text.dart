import 'package:flutter/material.dart';

Widget landingPageBodyText(BuildContext context, double width) {
  TextStyle? displayStyle = width > 1200
      ? Theme.of(context).textTheme.displayLarge
      : Theme.of(context).textTheme.displayMedium;
  TextStyle? bodyStyle = width > 1200
      ? Theme.of(context).textTheme.bodyLarge
      : Theme.of(context).textTheme.bodyMedium;
  TextStyle? labelStyle = width > 1200
      ? Theme.of(context).textTheme.labelLarge
      : Theme.of(context).textTheme.labelMedium;
  return Padding(
    padding: const EdgeInsets.all(50.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Website/App \nDeveloper',
          style: displayStyle,
        ),
        Text(
          'Freelance, freelancer are terms commonly used for a person who is \nself-employed and not necessarily committed to a particular employer long-term',
          style: bodyStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        MaterialButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Our Packages',
              style: labelStyle,
            ),
          ),
          color: Colors.white,
        ),
      ],
    ),
  );
}
