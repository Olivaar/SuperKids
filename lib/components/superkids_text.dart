import 'package:flutter/material.dart';

class superkidsText extends StatelessWidget {
  final String text;
  final int colorLetter;
  final double fontSize;
  final FontWeight fontWeight;

  const superkidsText(
      {Key key, this.text, this.colorLetter, this.fontSize, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color(colorLetter),
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}
