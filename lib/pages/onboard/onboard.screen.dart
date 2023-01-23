import 'package:flutter/material.dart';

import '../../common/color.manager.dart';
import '../../common/routes.manager.dart';
import '../../common/string.manager.dart';
import '../../common/value.manager.dart';
import '../../widgets/large.text.widget.dart';
import '../../widgets/small.text.widget.dart';
import 'models/onboard.model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboardScreen.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              itemBuilder: ((context, index) => OnboardContent(
                    index: _selectedIndex,
                    backImage: onboardScreen[index].backImage,
                    image: onboardScreen[index].image,
                    title: onboardScreen[index].title,
                    description: onboardScreen[index].description,
                  )),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var i = 0; i < onboardScreen.length; i++)
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 480),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: _selectedIndex == i
                          ? const Color(0xff5D5FEF)
                          : const Color(0xffECE8FD),
                    ),
                    width: AppSize.s8,
                    height: AppSize.s8,
                  ),
                )
            ],
          ),
          const SizedBox(
            height: AppSize.s45,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.loginRoute);
            },
            child: AppSmallText(
              text: AppStrings.skip,
              color: ColorManager.subTitle,
            ),
          ),
          const SizedBox(
            height: AppSize.s45,
          ),
        ],
      ),
    );
  }
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    required this.index,
    required this.backImage,
    required this.image,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  final String image, title, description, backImage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          backImage,
          fit: BoxFit.fill,
          alignment: AlignmentDirectional.topStart,
          height: MediaQuery.of(context).size.height * 0.50,
          width: double.infinity,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.20,
          left: AppSize.s30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [
                Align(
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ]),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: AppLargeText(
                  text: title,
                  color: ColorManager.titleText,
                ),
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: AppSmallText(
                  text: description,
                  color: ColorManager.subTitle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
