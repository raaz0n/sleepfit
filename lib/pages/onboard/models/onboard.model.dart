import '../../../common/string.manager.dart';

class Onboard {
  final String image, title, description, backImage;
  Onboard({
    required this.backImage,
    required this.image,
    required this.title,
    required this.description,
  });
}

List<Onboard> onboardScreen = [
  Onboard(
    backImage: "assets/image/onboard_back1.svg",
    image: "assets/image/onboard1.svg",
    title: AppStrings.onBoardingTitle1,
    description: AppStrings.onBoardingSubTitle1,
  ),
  Onboard(
    backImage: "assets/image/onboard_back1.svg",
    image: "assets/image/onboard2.svg",
    title: AppStrings.onBoardingTitle2,
    description: AppStrings.onBoardingSubTitle2,
  ),
  Onboard(
    backImage: "assets/image/onboard_back1.svg",
    image: "assets/image/onboard3.svg",
    title: AppStrings.onBoardingTitle3,
    description: AppStrings.onBoardingSubTitle3,
  )
];
