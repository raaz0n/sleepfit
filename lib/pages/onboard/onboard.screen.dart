import 'package:flutter/material.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/pages/Auth/login.screen.dart';

import '../../common/string.manager.dart';
import '../../widgets/large.text.widget.dart';
import '../../widgets/small.text.widget.dart';
import 'models/onboard.model.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
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
          "assets/image/onboard.jpeg",
          fit: BoxFit.cover,
          alignment: AlignmentDirectional.topStart,
        ),
        Positioned(
          top: AppSize.s200,
          left: AppSize.s50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [
                Align(
                  // alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/image/1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ]),
              SizedBox(
                width: AppSize.s300,
                child: AppLargeText(
                  text: title,
                  color: ColorManager.titleText,
                ),
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              SizedBox(
                width: AppSize.s300,
                child: AppSmallText(
                  text: description,
                  color: ColorManager.subTitle,
                ),
              ),
              const SizedBox(
                height: AppSize.s83,
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
                          color: index == i
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
                height: AppSize.s40,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: AppSmallText(text: AppStrings.skip))
            ],
          ),
        ),
      ],
    );
  }
}
