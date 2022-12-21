import 'package:flutter/material.dart';
import 'package:sleepfit/common/font.manager.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppLargeText({
    this.size = FontSize.s24,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
