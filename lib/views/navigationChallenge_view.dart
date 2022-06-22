import 'package:flutter/cupertino.dart';
import 'package:superkids/components/superkids_button.dart';
import 'package:superkids/components/superkids_text.dart';
import 'package:superkids/enumerators/optionChallenge_enumerator.dart';
import 'package:superkids/enumerators/player_enumerator.dart';
import 'package:superkids/enumerators/year_enumerator.dart';

class NavigationChallenge extends StatelessWidget {
  const NavigationChallenge({Key key, this.year, this.player})
      : super(key: key);

  final YearEnumerator year;
  final PlayerEnumerator player;

  @override
  Widget build(BuildContext context) {
    /*final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    final YearEnumerator year = arguments['year'];*/

    return Container(
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
                  text: "DESAFIOS",
                  colorLetter: 0xff000000,
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              superkidsButton(
                text: "Casa",
                onPressed: () {
                  Navigator.of(context).pushNamed('/challengeMenu', arguments: {
                    'year': year,
                    'player': player,
                    'optionChallengeEnumerator': OptionChallengeEnumerator.home,
                  });
                },
                colorButton: 0xffDE4B4B,
                fromLTRB_left: 32,
                fromLTRB_top: 32,
                fromLTRB_right: 32,
                fromLTRB_bottom: 32,
                colorLetter: 0xFFFFFFFF,
                fontSize: 30,
              ),
              SizedBox(
                height: 35,
              ),
              superkidsButton(
                text: "Parque",
                onPressed: () {
                  Navigator.of(context).pushNamed('/challengeMenu', arguments: {
                    'year': year,
                    'player': player,
                    'optionChallengeEnumerator': OptionChallengeEnumerator.park,
                  });
                },
                colorButton: 0xffDE4B4B,
                fromLTRB_left: 32,
                fromLTRB_top: 32,
                fromLTRB_right: 32,
                fromLTRB_bottom: 32,
                colorLetter: 0xFFFFFFFF,
                fontSize: 30,
              ),
            ],
          ),
        ));
  }
}
