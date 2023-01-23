import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/color.manager.dart';
import '../../common/font.manager.dart';
import '../../common/routes.manager.dart';
import '../../common/string.manager.dart';
import '../../widgets/default.button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.40,
            ),
            SvgPicture.asset("assets/icons/Vector.svg"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.014,
            ),
            RichText(
              text: TextSpan(
                  text: 'Sleep',
                  style: const TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: FontSize.s24,
                    fontWeight: FontWeight.bold,
                  ),
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
            SizedBox(
              height: size.height * 0.30,
            ),
            DefaultButton(
              text: AppStrings.getStarted,
              press: () {
                Navigator.pushNamed(context, Routes.onBoardingRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
