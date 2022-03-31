import 'package:flutter/material.dart';

class Templates extends StatelessWidget {
  const Templates({Key? key}) : super(key: key);

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Previous Works",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    "Includes work/projects/mocks we did in the past",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // color: Colors.white,
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.18,
                        child: Image.asset(
                          'assets/images/portfolio.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Personal Website",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: screenWidth * 0.24,
                        height: screenHeight * 0.1,
                        child: Text(
                          "A personal website or portfolio is an opportunity to reach more people with your work. It’s also an extension of your personality and gives you the chance to craft a design that reflects who you are as a creative.",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    color: Colors.white,
                    width: screenWidth * 0.25,
                    height: screenWidth * 0.18,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    color: Colors.white,
                    width: screenWidth * 0.25,
                    height: screenWidth * 0.18,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
