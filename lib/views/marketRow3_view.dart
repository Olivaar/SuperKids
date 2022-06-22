import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_marketButton.dart';

class MarketRow3 extends StatefulWidget {
  @override
  _MarketRow3State createState() => _MarketRow3State();
}

class _MarketRow3State extends State<MarketRow3> {
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
            image: 'images/Maca_SK.png',
          ),
          superkidsMarketButton(
            onPressed: () {},
            fromLTRB_bottom: 1,
            fromLTRB_left: 1,
            fromLTRB_right: 1,
            fromLTRB_top: 1,
            value: 50,
            recomendation: true,
            image: 'images/Melancia_SK.png',
          ),
          superkidsMarketButton(
            onPressed: () {},
            fromLTRB_bottom: 1,
            fromLTRB_left: 1,
            fromLTRB_right: 1,
            fromLTRB_top: 1,
            value: 50,
            recomendation: true,
            image: 'images/Morango_SK.png',
          ),
          superkidsMarketButton(
            onPressed: () {},
            fromLTRB_bottom: 1,
            fromLTRB_left: 1,
            fromLTRB_right: 1,
            fromLTRB_top: 1,
            value: 50,
            recomendation: true,
            image: 'images/Uva_SK.png',
          ),
        ],
      ),
    );
  }
}
