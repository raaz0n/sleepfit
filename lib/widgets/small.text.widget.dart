import 'package:flutter/material.dart';

class AppSmallText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppSmallText(
      {this.size = 16, required this.text, this.color = Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}
