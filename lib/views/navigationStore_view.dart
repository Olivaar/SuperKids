import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_button.dart';
import 'package:superkids/components/superkids_text.dart';

class NavigationStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffFFB6C0),
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Center(
                child: superkidsText(
                  text: "Loja",
                  colorLetter: 0xff000000,
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              superkidsButton(
                text: "Mercado",
                onPressed: () {
                  Navigator.of(context).pushNamed('/market');
                },
                colorButton: 0xffFF1493,
                fromLTRB_left: 50,
                fromLTRB_top: 50,
                fromLTRB_right: 50,
                fromLTRB_bottom: 50,
                colorLetter: 0xFFFFFFFF,
                fontSize: 24,
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ));
  }
}
