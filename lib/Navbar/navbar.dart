import 'package:flutter/material.dart';
import 'package:freelanceapp/auto_scroll.dart';
import 'package:provider/provider.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.5),
            Colors.transparent,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 800) {
              return const DesktopNavbar();
            } else {
              return const MobileNavbar();
            }
          },
        ),
      ),
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: screenWidth * 0.05),
        Column(
          children: [
            Text(
              'PRANA',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Text("The Freelancing Nerds!"),
          ],
        ),
        SizedBox(width: screenWidth * 0.5),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                context.read<AutoScroll>().scrollTo(1);
              },
              child: Text(
                'Home',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(width: 30),
            GestureDetector(
              onTap: () {
                context.read<AutoScroll>().scrollTo(screenHeight * 0.875);
              },
              child: Text(
                'About Us',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(width: 30),
            MaterialButton(
              onPressed: () {
                context.read<AutoScroll>().scrollTo((screenHeight * 0.875) * 2);
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contact Us',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(),
        Column(
          children: [
            Text(
              'PRANA',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Text("The Freelancing Nerds!"),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.read<AutoScroll>().scrollTo(1);
              },
              child: Text(
                'Home',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                context.read<AutoScroll>().scrollTo(screenHeight * 0.8);
              },
              child: Text(
                'About Us',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                context.read<AutoScroll>().scrollTo((screenHeight * 0.8) * 2);
              },
              child: Text(
                'Contact',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ],
    );
  }
}
