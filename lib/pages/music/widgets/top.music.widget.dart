import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common/color.manager.dart';
import '../../../common/font.manager.dart';
import '../../../common/value.manager.dart';
import '../../../widgets/large.text.widget.dart';
import '../../../widgets/small.text.widget.dart';

class TopMusicWidget extends StatelessWidget {
  const TopMusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: AppSize.s440,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s28),
        image: const DecorationImage(
            image: AssetImage(
              "assets/image/music_backgound.jpeg",
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppLargeText(
            text: "Deep Sleep Music",
            color: Colors.white,
            size: FontSize.s20,
          ),
          const SizedBox(
            height: AppPadding.p8,
          ),
          AppSmallText(
            text: "Composer",
            color: Colors.white,
            size: FontSize.s12,
          ),
          const SizedBox(
            height: AppPadding.p8,
          ),
          AppLargeText(
            text: "Robert Lundgren",
            color: ColorManager.subTitle,
            size: FontSize.s14,
          ),
          const SizedBox(
            height: AppSize.s28,
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff5D5FEF),
                  Color(0xffA5A6F6),
                ],
              ),
            ),
            child: const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              child: FaIcon(
                FontAwesomeIcons.pause,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
