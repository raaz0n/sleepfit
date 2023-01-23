import 'dart:developer';

import 'package:flutter/material.dart';

import '../../common/value.manager.dart';
import '../Journal/model/feature.model.dart';
import 'widgets/tabbar.widget.dart';
import 'widgets/top.music.widget.dart';

class MusicScreen extends StatelessWidget {
  final FeatureItemModel data;
  const MusicScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    log(data.title);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
        child: ListView(
          children: const [
            TopMusicWidget(),
            SizedBox(
              height: AppSize.s14,
            ),
            TabBarWidget(),
          ],
        ),
      ),
    );
  }
}
