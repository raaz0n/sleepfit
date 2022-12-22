import 'package:flutter/material.dart';
import 'package:sleepfit/widgets/buttonWithIcon.widget.dart';

import '../../../common/color.manager.dart';
import '../../../common/font.manager.dart';
import '../../../common/string.manager.dart';
import '../../../common/value.manager.dart';
import '../../../widgets/large.text.widget.dart';

class HeadingWidget extends StatelessWidget {
  final title;
  const HeadingWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppLargeText(
          text: title,
          size: FontSize.s20,
          color: ColorManager.titleText,
        ),
        const ButtonWithIcons(
          text: AppStrings.more,
          height: AppSize.s30,
          width: AppSize.s83,
        )
      ],
    );
  }
}
