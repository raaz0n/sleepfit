import 'package:flutter/material.dart';

import '../../../common/color.manager.dart';
import '../../../common/font.manager.dart';
import '../../../common/string.manager.dart';
import '../../../common/value.manager.dart';
import '../../../widgets/default.button.dart';
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
        const DefaultButton(
          text: AppStrings.more,
          height: AppSize.s30,
          width: AppSize.s83,
        )
      ],
    );
  }
}
