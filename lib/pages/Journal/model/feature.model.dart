import 'package:flutter/material.dart';

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
    title: 'Regularity',
    subTitle: "97%",
  ),
  FeatureItemModel(
    icon: Icons.access_alarm,
    title: 'Asleep after',
    subTitle: "16 min",
  ),
  FeatureItemModel(
    icon: Icons.bedtime,
    title: 'Went to bed',
    subTitle: "4:02 AM",
  ),
  FeatureItemModel(
    icon: Icons.access_alarm,
    title: 'Woke up',
    subTitle: "1:15 min",
  ),
  FeatureItemModel(
    icon: Icons.hotel,
    title: 'Went to bed',
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
