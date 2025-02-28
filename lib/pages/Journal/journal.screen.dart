import 'package:flutter/material.dart';

import '../../common/color.manager.dart';
import '../../common/font.manager.dart';
import '../../common/string.manager.dart';
import '../../common/value.manager.dart';
import 'widgets/date.picker.widget.dart';
import 'widgets/grid.item.widget.dart';
import 'widgets/line.chart.widget.dart';
import 'widgets/share.widget.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        backgroundColor: ColorManager.white,
        title: Text(
          AppStrings.sleepCalendar,
          style: TextStyle(
              fontSize: FontSize.s24,
              color: ColorManager.subTitle,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                DatePickerWidget(),
                SizedBox(
                  height: AppSize.s24,
                ),
                SharedWidget(),
                SizedBox(
                  child: LineChartWidget(),
                ),
                GridItemWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
