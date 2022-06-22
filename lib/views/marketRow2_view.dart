import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_marketButton.dart';

class MarketRow2 extends StatefulWidget {
  @override
  _MarketRow2State createState() => _MarketRow2State();
}

class _MarketRow2State extends State<MarketRow2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            superkidsMarketButton(
              onPressed: () {},
              fromLTRB_bottom: 1,
              fromLTRB_left: 1,
              fromLTRB_right: 1,
              fromLTRB_top: 1,
              value: 50,
              recomendation: true,
              image: 'images/Alface_SK.png',
            ),
            superkidsMarketButton(
              onPressed: () {},
              fromLTRB_bottom: 1,
              fromLTRB_left: 1,
              fromLTRB_right: 1,
              fromLTRB_top: 1,
              value: 50,
              recomendation: true,
              image: 'images/Cenoura_SK.png',
            ),
            superkidsMarketButton(
              onPressed: () {},
              fromLTRB_bottom: 1,
              fromLTRB_left: 1,
              fromLTRB_right: 1,
              fromLTRB_top: 1,
              value: 50,
              recomendation: true,
              image: 'images/Milho_SK.png',
            ),
            superkidsMarketButton(
              onPressed: () {},
              fromLTRB_bottom: 1,
              fromLTRB_left: 1,
              fromLTRB_right: 1,
              fromLTRB_top: 1,
              value: 50,
              recomendation: true,
              image: 'images/Tomate_SK.png',
            ),
            superkidsMarketButton(
              onPressed: () {},
              fromLTRB_bottom: 1,
              fromLTRB_left: 1,
              fromLTRB_right: 1,
              fromLTRB_top: 1,
              value: 50,
              recomendation: true,
              image: 'images/Tomate_SK.png',
            ),
          ],
        ));
  }
}
