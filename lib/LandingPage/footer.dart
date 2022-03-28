import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.black,
      height: screenHeight * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Show us some ❤️"),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                  var _url = "https://www.instagram.com/freelanceinnovators22/";
                  await canLaunch(_url)
                      ? await launch(_url)
                      : throw 'Could not launch $_url';
                },
                icon: const Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              IconButton(
                onPressed: () async {
                  var _url =
                      "https://www.facebook.com/profile.php?id=100079907132523";
                  await canLaunch(_url)
                      ? await launch(_url)
                      : throw 'Could not launch $_url';
                },
                icon: const Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              IconButton(
                onPressed: () async {
                  var _url = "https://twitter.com/innovators22";
                  await canLaunch(_url)
                      ? await launch(_url)
                      : throw 'Could not launch $_url';
                },
                icon: const Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
