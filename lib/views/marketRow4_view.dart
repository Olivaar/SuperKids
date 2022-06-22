import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_marketButton.dart';

class MarketRow4 extends StatefulWidget {
  @override
  _MarketRow4State createState() => _MarketRow4State();
}

class _MarketRow4State extends State<MarketRow4> {
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
            image: 'images/Arroz_SK.png',
          ),
          superkidsMarketButton(
            onPressed: () {},
            fromLTRB_bottom: 1,
            fromLTRB_left: 1,
            fromLTRB_right: 1,
            fromLTRB_top: 1,
            value: 50,
            recomendation: true,
            image: 'images/Feijao_SK.png',
          ),
          superkidsMarketButton(
            onPressed: () {},
            fromLTRB_bottom: 1,
            fromLTRB_left: 1,
            fromLTRB_right: 1,
            fromLTRB_top: 1,
            value: 50,
            recomendation: true,
            image: 'images/Bife_SK.png',
          ),
          superkidsMarketButton(
            onPressed: () {},
            fromLTRB_bottom: 1,
            fromLTRB_left: 1,
            fromLTRB_right: 1,
            fromLTRB_top: 1,
            value: 50,
            recomendation: true,
            image: 'images/BifeDecarne_SK.png',
          ),
        ],
      ),
    );
  }
}
