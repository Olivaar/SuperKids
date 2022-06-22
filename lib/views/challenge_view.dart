import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_button.dart';
import 'package:superkids/components/superkids_text.dart';
import 'package:superkids/enumerators/challenge_enumerator.dart';
import 'package:superkids/enumerators/optionChallenge_enumerator.dart';
import 'package:superkids/enumerators/player_enumerator.dart';
import 'package:superkids/enumerators/year_enumerator.dart';
import 'package:superkids/maps/challengeMessage_map.dart';
import 'package:superkids/models/challenge_model.dart';
import 'player_view.dart';

class ChallengeView extends StatefulWidget {
  const ChallengeView(
      {Key key,
      this.challenge,
      this.title,
      this.year,
      this.optionChallengeEnumerator})
      : super(key: key);

  final ChallengeModel challenge;
  final String title;
  final YearEnumerator year;
  final OptionChallengeEnumerator optionChallengeEnumerator;

  @override
  _ChallengeViewState createState() => _ChallengeViewState();
}

class _ChallengeViewState extends State<ChallengeView> {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    final ChallengeModel challenge = arguments['challenge'];
    final String title = arguments['title'];
    final YearEnumerator year = arguments['year'];
    final OptionChallengeEnumerator optionChallengeEnumerator =
        arguments['optionChallengeEnumerator'];
    final PlayerEnumerator player = arguments['player'];

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SingleChildScrollView(
                child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Player(
                    player: player,
                  ),
                  /*Image.asset(
                    "images/DesafioOlivar.jpg",
                    width: 200,
                    height: 200,
                  ),*/
                  SizedBox(
                    height: 35,
                  ),
                  superkidsText(
                    text: challenge.text,
                    colorLetter: 0xff000000,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  superkidsButton(
                    text: ChallengeMessage.GetMessage(
                        ChallengeEnumerator.buttonSubmitChallenge,
                        year,
                        optionChallengeEnumerator),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    colorButton: 0xffFF1493,
                    fromLTRB_left: 32,
                    fromLTRB_top: 16,
                    fromLTRB_right: 32,
                    fromLTRB_bottom: 16,
                    colorLetter: 0xFFFFFFFF,
                    fontSize: 15,
                  )
                ],
              ),
            )),
          ],
        )
        /*Container(
        child: ListView.builder(
          itemCount: phases.length,
          itemBuilder: (_, int index) {
            return CheckboxWidget(stage: phases[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.apps),
        onPressed: () {
          List<ChallengeModel> itensMarcados =
              List.from(phases.where((item) => item.checked));

          itensMarcados.forEach((item) {
            print(item.text);
          });
        },
      ),*/
        );
  }
}
