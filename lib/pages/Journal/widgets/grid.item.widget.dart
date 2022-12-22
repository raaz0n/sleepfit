import 'package:flutter/material.dart';
import 'package:sleepfit/pages/Journal/model/feature.model.dart';
import 'package:sleepfit/widgets/small.text.widget.dart';

import '../../../common/color.manager.dart';
import '../../../common/font.manager.dart';
import '../../../common/value.manager.dart';

class GridItemWidget extends StatelessWidget {
  const GridItemWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: feature.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 30 / 10,
            // mainAxisSpacing: 2,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Container(
                  height: AppSize.s40,
                  width: AppSize.s40,
                  decoration: BoxDecoration(
                    color: const Color(0xffA5A6F6).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(AppSize.s14),
                  ),
                  child: Center(
                      child: Icon(
                    feature[index].icon,
                    color: ColorManager.titleText,
                  )),
                ),
                const SizedBox(
                  width: AppSize.s16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSmallText(
                      text: feature[index].title,
                      color: ColorManager.subTitle,
                      size: FontSize.s12,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    AppSmallText(
                      text: feature[index].subTitle,
                      color: ColorManager.titleText,
                      size: FontSize.s12,
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
