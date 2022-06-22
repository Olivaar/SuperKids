import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_button.dart';
import 'package:superkids/components/superkids_playerButton.dart';
import 'package:superkids/components/superkids_text.dart';
import 'package:superkids/enumerators/player_enumerator.dart';
import 'package:superkids/enumerators/year_enumerator.dart';
import '../components/superkids_button.dart';
import 'package:superkids/controllers/login_controller.dart';

class dataPlayer extends StatefulWidget {
  @override
  _dataPlayerState createState() => _dataPlayerState();
}

class _dataPlayerState extends State<dataPlayer> {
  PlayerEnumerator player = PlayerEnumerator.player1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB0E0E6),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 125.0, 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Column(
                children: [
                  superkidsText(
                    text: "Selecione seu Personagem!",
                    colorLetter: 0xff000000,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                superkidsPlayerButton(
                  onPressed: () {
                    setState(() {
                      player = PlayerEnumerator.player1;
                    });
                  },
                  fromLTRB_bottom: 0,
                  fromLTRB_left: 10,
                  fromLTRB_right: 10,
                  fromLTRB_top: 10,
                  image: 'images/MARY_skOFC.png',
                ),
                superkidsPlayerButton(
                  onPressed: () {
                    setState(() {
                      player = PlayerEnumerator.player2;
                    });
                  },
                  fromLTRB_bottom: 0,
                  fromLTRB_left: 10,
                  fromLTRB_right: 10,
                  fromLTRB_top: 10,
                  image: 'images/SK_meninoOFC.png',
                )
              ],
            ),
            /*TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome:",
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff000000), fontSize: 25.0),
            ),*/
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 0.0),
              child: Text(
                "Escolha sua faixa etária:",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff000000), fontSize: 25.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                  child: superkidsButton(
                    text: "4-6",
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/home', arguments: {
                        'year': YearEnumerator.yearFourSix,
                        'player': player,
                      });
                    },
                    colorButton: 0xff32CD32,
                    fromLTRB_left: 32,
                    fromLTRB_top: 16,
                    fromLTRB_right: 32,
                    fromLTRB_bottom: 16,
                    colorLetter: 0xFFFFFFFF,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                  child: superkidsButton(
                    text: "7-9",
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/home', arguments: {
                        'year': YearEnumerator.yearSevenNine,
                        'player': player,
                      });
                    },
                    colorButton: 0xffF4A460,
                    fromLTRB_left: 32,
                    fromLTRB_top: 16,
                    fromLTRB_right: 32,
                    fromLTRB_bottom: 16,
                    colorLetter: 0xFFFFFFFF,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                  child: superkidsButton(
                    text: "10-12",
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/home', arguments: {
                        'year': YearEnumerator.yearTenTwelve,
                        'player': player,
                      });
                    },
                    colorButton: 0xffDE4B4B,
                    fromLTRB_left: 32,
                    fromLTRB_top: 16,
                    fromLTRB_right: 32,
                    fromLTRB_bottom: 16,
                    colorLetter: 0xFFFFFFFF,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
