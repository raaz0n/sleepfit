import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/font.manager.dart';
import 'package:sleepfit/common/value.manager.dart';

import '../../../widgets/small.text.widget.dart';

class SharedWidget extends StatelessWidget {
  const SharedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s140,
      decoration: BoxDecoration(
        color: ColorManager.titleText,
        borderRadius: BorderRadius.circular(AppSize.s18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircularPercentIndicator(
            radius: 55.0,
            lineWidth: 4.0,
            percent: 0.75,
            center: AppSmallText(
              text: "75%",
              size: 20,
              color: ColorManager.white,
            ),
            progressColor: ColorManager.white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSmallText(
                text: "Bed time",
                color: ColorManager.white,
                size: FontSize.s14,
              ),
              AppSmallText(
                text: "7h 28m",
                color: ColorManager.white,
                size: FontSize.s14,
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              AppSmallText(
                text: "Asleep",
                color: ColorManager.white,
                size: FontSize.s14,
              ),
              AppSmallText(
                text: "16h 18m",
                color: ColorManager.white,
                size: FontSize.s14,
              )
            ],
          ),
          Icon(
            Icons.share,
            color: ColorManager.white,
          )
        ],
      ),
    );
  }
}
