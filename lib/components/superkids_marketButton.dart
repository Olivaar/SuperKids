import 'dart:ffi';
import 'package:flutter/material.dart';

class superkidsMarketButton extends StatelessWidget {
  final Void Function() onPressed;
  final double fromLTRB_left;
  final double fromLTRB_top;
  final double fromLTRB_right;
  final double fromLTRB_bottom;
  final int value;
  final bool recomendation;
  final String image;

  const superkidsMarketButton({
    Key key,
    this.onPressed,
    this.fromLTRB_left,
    this.fromLTRB_top,
    this.fromLTRB_right,
    this.fromLTRB_bottom,
    this.value,
    this.recomendation,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Image(
        image: AssetImage(image),
        width: 80,
      ),
      padding: EdgeInsets.fromLTRB(
          fromLTRB_left, fromLTRB_top, fromLTRB_right, fromLTRB_bottom),
    );
  }
}
