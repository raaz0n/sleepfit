import 'package:flutter/material.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/font.manager.dart';
import 'package:sleepfit/common/string.manager.dart';
import 'package:sleepfit/pages/Statistics/widgets/heading.widget.dart';
import 'package:sleepfit/widgets/line.chart.widget.dart';

import '../../common/value.manager.dart';
import 'widgets/bar.chart.widget.dart';
import 'widgets/bar.chart.widget2.dart';
import 'widgets/line.chart.widget2.dart';

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
                HeadingWidget(title: AppStrings.sleepQuality),
                BarChartSample(),
                HeadingWidget(title: AppStrings.regularity),
                LineChartWidget2(),
                HeadingWidget(title: AppStrings.wentToBed),
                BarChartSample2(),
                HeadingWidget(title: AppStrings.wokeUp),
                LineChartWidget(),
                HeadingWidget(title: AppStrings.timeInBed),
                BarChartSample(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
