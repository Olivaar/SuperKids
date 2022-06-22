import 'package:flutter/material.dart';
import 'package:superkids/views/marketRow1_view.dart';
import 'package:superkids/views/marketRow2_view.dart';
import 'package:superkids/views/marketRow3_view.dart';
import 'package:superkids/components/superkids_text.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                "images/SuperKids_Market.jpg",
                fit: BoxFit.fitWidth,
                width: 800,
                //height: 1000.0,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      children: [
                        superkidsText(
                          text: "Mercado",
                          colorLetter: 0xff000000,
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                    child: Column(
                      children: [MarketRow1()],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                    child: Column(
                      children: [MarketRow2()],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                    child: Column(
                      children: [MarketRow3()],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                    child: Column(
                      children: [MarketRow1()],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
