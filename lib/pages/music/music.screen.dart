import 'package:flutter/material.dart';
import 'package:sleepfit/pages/music/widgets/tabbar.widget.dart';

import '../../common/value.manager.dart';
import 'widgets/top.music.widget.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
          child: Column(
            children: const [
              TopMusicWidget(),
              SizedBox(
                height: AppSize.s14,
              ),
              TabBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
