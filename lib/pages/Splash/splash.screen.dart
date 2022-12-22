import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/font.manager.dart';
import 'package:sleepfit/common/string.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
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
              text: TextSpan(
                  text: 'Sleep',
                  style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: FontSize.s24,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Fit',
                      style: TextStyle(
                        color: ColorManager.titleText,
                        fontSize: FontSize.s24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: AppSize.s300,
            ),
            DefaultButton(
              text: AppStrings.getStarted,
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
