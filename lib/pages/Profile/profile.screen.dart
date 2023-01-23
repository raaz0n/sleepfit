import 'package:flutter/material.dart';

import '../../common/color.manager.dart';
import '../../common/font.manager.dart';
import '../../common/string.manager.dart';
import '../../widgets/large.text.widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        backgroundColor: ColorManager.white,
        title: Text(
          AppStrings.profile,
          style: TextStyle(
            fontSize: FontSize.s24,
            color: ColorManager.subTitle,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: AppLargeText(
          text: "This is Profile Space",
          color: ColorManager.titleText,
        ),
      )),
    );
  }
}
