import 'dart:ffi';
import 'package:flutter/material.dart';

class superkidsPlayerButton extends StatelessWidget {
  final Void Function() onPressed;
  final double fromLTRB_left;
  final double fromLTRB_top;
  final double fromLTRB_right;
  final double fromLTRB_bottom;
  final String image;

  const superkidsPlayerButton({
    Key key,
    this.onPressed,
    this.fromLTRB_left,
    this.fromLTRB_top,
    this.fromLTRB_right,
    this.fromLTRB_bottom,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Image(
        image: AssetImage(image),
        width: 150,
      ),
      padding: EdgeInsets.fromLTRB(
          fromLTRB_left, fromLTRB_top, fromLTRB_right, fromLTRB_bottom),
    );
  }
}
