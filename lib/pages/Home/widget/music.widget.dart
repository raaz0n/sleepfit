import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/font.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/pages/music/music.screen.dart';
import 'package:sleepfit/widgets/large.text.widget.dart';
import 'package:sleepfit/widgets/small.text.widget.dart';

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s100,
      // width: AppSize.s390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s28),
        image: const DecorationImage(
            image: AssetImage(
              "assets/image/music_backgound.jpeg",
            ),
            fit: BoxFit.cover),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MusicScreen()));
            },
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
          )
        ],
      ),
    );
  }
}
