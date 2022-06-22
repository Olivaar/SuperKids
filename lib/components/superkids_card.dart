import 'package:flutter/material.dart';

class SuperkidsCard extends StatelessWidget {
  SuperkidsCard({this.title, this.icon, this.colorIcon, this.onTap});
  final String title;
  final IconData icon;
  final MaterialColor colorIcon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        splashColor: colorIcon,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: colorIcon),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
