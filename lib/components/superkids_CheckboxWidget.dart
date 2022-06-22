import 'package:flutter/material.dart';
import 'package:superkids/models/challenge_model.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({Key key, this.stage}) : super(key: key);

  final ChallengeModel stage;

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.stage.text),
      value: widget.stage.checked,
      onChanged: (bool value) {
        setState(() {
          widget.stage.checked = value;
        });
      },
    );
  }
}
