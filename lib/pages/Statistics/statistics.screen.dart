import 'package:flutter/material.dart';

import '../../common/color.manager.dart';
import '../../common/font.manager.dart';
import '../../common/string.manager.dart';
import '../../common/value.manager.dart';
import 'widgets/bar.chart.widget.dart';
import 'widgets/bar.chart.widget2.dart';
import 'widgets/heading.widget.dart';
import 'widgets/line.chart.widget2.dart';
import 'widgets/topTabBar.widget.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        backgroundColor: ColorManager.white,
        title: Text(
          AppStrings.statistics,
          style: TextStyle(
              fontSize: FontSize.s24,
              color: ColorManager.subTitle,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TopTabBarWidget(),
                SizedBox(
                  height: AppSize.s40,
                ),
                HeadingWidget(title: AppStrings.sleepQuality),
                SizedBox(
                  height: AppSize.s16,
                ),
                BarChartSample(),
                SizedBox(
                  height: AppSize.s40,
                ),
                HeadingWidget(title: AppStrings.regularity),
                SizedBox(
                  height: AppSize.s16,
                ),
                BarChartSample2(),
                SizedBox(
                  height: AppSize.s40,
                ),
                HeadingWidget(title: AppStrings.wentToBed),
                LineChartWidget2(),
                SizedBox(
                  height: AppSize.s40,
                ),
                HeadingWidget(title: AppStrings.wokeUp),
                LineChartWidget2(),
                SizedBox(
                  height: AppSize.s40,
                ),
                HeadingWidget(title: AppStrings.timeInBed),
                SizedBox(
                  height: AppSize.s16,
                ),
                BarChartSample(),
                SizedBox(
                  height: AppSize.s30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
