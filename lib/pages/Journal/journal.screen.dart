import 'package:flutter/material.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/pages/Journal/widgets/date.picker.widget.dart';
import 'package:sleepfit/pages/Journal/widgets/grid.item.widget.dart';
import 'package:sleepfit/widgets/large.text.widget.dart';

import 'widgets/share.widget.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLargeText(text: "Your Sleep Calendar "),
            const DatePickerWidget(),
            const SizedBox(
              height: AppSize.s40,
            ),
            const SharedWidget(),
            const SizedBox(
              height: AppSize.s40,
            ),
            const SizedBox(
              height: AppSize.s165,
            ),
            const GridItemWidget(),
          ],
        ),
      ),
    );
  }
}
