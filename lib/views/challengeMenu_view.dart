import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_card.dart';
import 'package:superkids/enumerators/challenge_enumerator.dart';
import 'package:superkids/enumerators/optionChallenge_enumerator.dart';
import 'package:superkids/enumerators/player_enumerator.dart';
import 'package:superkids/enumerators/year_enumerator.dart';
import 'package:superkids/maps/challengeMessage_map.dart';
import 'package:superkids/models/challenge_model.dart';

class ChallengeMenu extends StatefulWidget {
  const ChallengeMenu(
      {Key key, this.year, this.player, this.optionChallengeEnumerator})
      : super(key: key);

  final YearEnumerator year;
  final PlayerEnumerator player;
  final OptionChallengeEnumerator optionChallengeEnumerator;

  @override
  _ChallengeMenuState createState() => _ChallengeMenuState();
}

class _ChallengeMenuState extends State<ChallengeMenu> {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    final YearEnumerator year = arguments['year'];
    final PlayerEnumerator player = arguments['player'];
    final OptionChallengeEnumerator optionChallengeEnumerator =
        arguments['optionChallengeEnumerator'];

    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(10.0),
          color: Color(0xffDE4B4B),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              SuperkidsCard(
                title: ChallengeMessage.GetMessage(
                    ChallengeEnumerator.titleChallenge1,
                    year,
                    optionChallengeEnumerator),
                icon: Icons.account_balance,
                colorIcon: Colors.brown,
                onTap: () {
                  final ChallengeModel challenge = new ChallengeModel(
                      text: ChallengeMessage.GetMessage(
                          ChallengeEnumerator.challenge1,
                          year,
                          optionChallengeEnumerator));

                  Navigator.of(context).pushNamed('/challengeView', arguments: {
                    'challenge': challenge,
                    'title': ChallengeMessage.GetMessage(
                        ChallengeEnumerator.titleChallenge1,
                        year,
                        optionChallengeEnumerator),
                    'year': year,
                    'optionChallengeEnumerator': optionChallengeEnumerator,
                    'player': player,
                  });
                },
              ),
              SuperkidsCard(
                title: ChallengeMessage.GetMessage(
                    ChallengeEnumerator.titleChallenge2,
                    year,
                    optionChallengeEnumerator),
                icon: Icons.info_outline_rounded,
                colorIcon: Colors.blue,
                onTap: () {
                  final ChallengeModel challenge = new ChallengeModel(
                      text: ChallengeMessage.GetMessage(
                          ChallengeEnumerator.challenge2,
                          year,
                          optionChallengeEnumerator));

                  Navigator.of(context).pushNamed('/challengeView', arguments: {
                    'challenge': challenge,
                    'title': ChallengeMessage.GetMessage(
                        ChallengeEnumerator.titleChallenge2,
                        year,
                        optionChallengeEnumerator),
                    'year': year,
                    'optionChallengeEnumerator': optionChallengeEnumerator,
                    'player': player,
                  });
                },
              ),
              SuperkidsCard(
                title: ChallengeMessage.GetMessage(
                    ChallengeEnumerator.titleChallenge3,
                    year,
                    optionChallengeEnumerator),
                icon: Icons.school,
                colorIcon: Colors.orange,
                onTap: () {
                  final ChallengeModel challenge = new ChallengeModel(
                      text: ChallengeMessage.GetMessage(
                          ChallengeEnumerator.challenge3,
                          year,
                          optionChallengeEnumerator));

                  Navigator.of(context).pushNamed('/challengeView', arguments: {
                    'challenge': challenge,
                    'title': ChallengeMessage.GetMessage(
                        ChallengeEnumerator.titleChallenge3,
                        year,
                        optionChallengeEnumerator),
                    'year': year,
                    'optionChallengeEnumerator': optionChallengeEnumerator,
                    'player': player,
                  });
                },
              ),
            ],
          ),
        ));
  }
}
