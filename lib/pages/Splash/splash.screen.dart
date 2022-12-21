import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleepfit/pages/onboard/onboard.screen.dart';
import 'package:sleepfit/widgets/default.button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 416,
            ),
            SvgPicture.asset("assets/icons/Vector.svg"),
            const SizedBox(
              height: 14,
            ),
            RichText(
              text: const TextSpan(
                  text: 'Sleep',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Fit',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
            const SizedBox(
              height: 345,
            ),
            DefaultButton(
              text: "Get Started",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnboardScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
