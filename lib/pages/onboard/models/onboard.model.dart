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
    backImage: "assets/image/onboard_back1.jpeg",
    image: "assets/image/1.png",
    title: AppStrings.onBoardingTitle1,
    description: AppStrings.onBoardingSubTitle1,
  ),
  Onboard(
    backImage: "assets/image/onboard_back2.jpeg",
    image: "assets/image/2.png",
    title: AppStrings.onBoardingTitle2,
    description: AppStrings.onBoardingSubTitle2,
  ),
  Onboard(
    backImage: "assets/image/onboard_back3.jpeg",
    image: "assets/image/3.png",
    title: AppStrings.onBoardingTitle3,
    description: AppStrings.onBoardingSubTitle3,
  )
];
