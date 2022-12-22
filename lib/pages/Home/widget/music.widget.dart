import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleepfit/common/value.manager.dart';

import '../../../common/color.manager.dart';
import '../../../common/font.manager.dart';
import '../../../widgets/large.text.widget.dart';
import '../../../widgets/small.text.widget.dart';
import '../../music/music.screen.dart';

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          transitionOnUserGestures: true,
          tag: "musicTag",
          child: Opacity(
            opacity: 0.8,
            child: Container(
              height: AppSize.s100,
              width: AppSize.s390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s24),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/image/music_backgound.jpeg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(
                    text: "Deep Sleep Music",
                    color: Colors.white,
                    size: FontSize.s16,
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
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MusicScreen(),
                    ),
                  );
                },
                child: Hero(
                  tag: "play",
                  child: Container(
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
                      child: FaIcon(FontAwesomeIcons.play),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
