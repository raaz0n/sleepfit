import 'package:flutter/material.dart';

import '../common/color.manager.dart';
import '../common/font.manager.dart';

class ButtonWithIcons extends StatelessWidget {
  const ButtonWithIcons(
      {Key? key, required this.text, this.press, this.height, this.width})
      : super(key: key);
  final String text;
  final VoidCallback? press;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xff5D5FEF),
                Color(0xffA5A6F6),
              ],
            ),
            borderRadius: BorderRadius.circular(99)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: FontSize.s12,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.navigate_next,
              color: ColorManager.white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
