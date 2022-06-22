import 'package:flutter/material.dart';
import 'package:superkids/enumerators/player_enumerator.dart';

class Player extends StatefulWidget {
  const Player({
    Key key,
    this.player,
  }) : super(key: key);
  final PlayerEnumerator player;

  @override
  _PlayerState createState() => _PlayerState();
}

int value;

class _PlayerState extends State<Player> {
  get arguments => null;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    final PlayerEnumerator player = arguments['player'];
    if (player == PlayerEnumerator.player1) {
      return Container(
          child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Image.asset(
            'images/MARY_skOFC.png',
            width: 320,
            height: 320,
          ),
        ),
      ]));
    } else {
      return Container(
          child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Image.asset(
            'images/SK_meninoOFC.png',
            width: 320,
            height: 320,
          ),
        ),
      ]));
    }
  }
}
