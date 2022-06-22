import 'package:flutter/material.dart';

class superkidsButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final int colorButton;
  final double fromLTRB_left;
  final double fromLTRB_top;
  final double fromLTRB_right;
  final double fromLTRB_bottom;
  final int colorLetter;
  final double fontSize;

  const superkidsButton(
      {Key key,
      this.text,
      this.onPressed,
      this.colorButton,
      this.fromLTRB_left,
      this.fromLTRB_top,
      this.fromLTRB_right,
      this.fromLTRB_bottom,
      this.colorLetter,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        text,
        style: TextStyle(
            color: Color(colorLetter),
            fontSize: fontSize,
            fontWeight: FontWeight.w800),
      ),
      color: Color(colorButton),
      padding: EdgeInsets.fromLTRB(
          fromLTRB_left, fromLTRB_top, fromLTRB_right, fromLTRB_bottom),
      onPressed: onPressed,
    );
  }
}
