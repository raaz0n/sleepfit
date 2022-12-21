import 'package:flutter/material.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/pages/Home/widget/music.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
      child: Column(
        children: const [
          MusicWidget(),
        ],
      ),
    ));
  }
}
