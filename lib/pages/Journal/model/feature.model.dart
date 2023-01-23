import 'package:flutter/material.dart';

import '../../../common/string.manager.dart';

class FeatureItemModel {
  String title;
  String subTitle;
  IconData icon;

  FeatureItemModel(
      {required this.title, required this.icon, required this.subTitle});
}

List<FeatureItemModel> feature = [
  FeatureItemModel(
    icon: Icons.pie_chart,
    title: AppStrings.regularity,
    subTitle: "97%",
  ),
  FeatureItemModel(
    icon: Icons.access_alarm,
    title: 'Asleep after',
    subTitle: "16 min",
  ),
  FeatureItemModel(
    icon: Icons.bedtime,
    title: AppStrings.wentToBed,
    subTitle: "4:02 AM",
  ),
  FeatureItemModel(
    icon: Icons.access_alarm,
    title: AppStrings.wokeUp,
    subTitle: "1:15 min",
  ),
  FeatureItemModel(
    icon: Icons.hotel,
    title: AppStrings.wentToBed,
    subTitle: "4:02 AM",
  ),
  FeatureItemModel(
    icon: Icons.directions_walk,
    title: 'Steps',
    subTitle: "11,234",
  ),
  FeatureItemModel(
    icon: Icons.mood,
    title: 'Wake up mood ',
    subTitle: "Good",
  ),
  FeatureItemModel(
    icon: Icons.cloud,
    title: 'Weather',
    subTitle: "60 F",
  ),
];
