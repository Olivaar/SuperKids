import 'package:flutter/material.dart';
import 'package:superkids/enumerators/player_enumerator.dart';
import 'package:superkids/views/marketRow1_view.dart';
import '../components/superkids_button.dart';
import 'player_view.dart';
import 'foodsPlayer_view.dart';

class NavigationKitchen extends StatefulWidget {
  const NavigationKitchen({Key key, this.player}) : super(key: key);

  final PlayerEnumerator player;
  @override
  _NavigationKitchenState createState() => _NavigationKitchenState();
}

class _NavigationKitchenState extends State<NavigationKitchen> {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    final PlayerEnumerator player = arguments['player'];
    return Scaffold(
      backgroundColor: Color(0xffA020F0),
      body: Container(
        //padding: EdgeInsets.all(16.0),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Player(
                player: player,
              ),
              MarketRow1(),
              superkidsButton(
                text: "Mercado",
                onPressed: () {
                  Navigator.of(context).pushNamed('/market');
                },
                colorButton: 0xffFF1493,
                fromLTRB_left: 32,
                fromLTRB_right: 32,
                fromLTRB_top: 16,
                fromLTRB_bottom: 16,
                colorLetter: 0xFFFFFFFF,
                fontSize: 15,
              )
            ],
          ),
        )),
      ),
    );
  }
}
