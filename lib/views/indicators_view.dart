import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:superkids/views/navBarView.dart';

class Indicators extends StatefulWidget {
  @override
  _IndicatorsState createState() => _IndicatorsState();
}

class _IndicatorsState extends State<Indicators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(children: <Widget>[
          SizedBox(
            height: 5,
          ),
          CircularPercentIndicator(
            radius: 120.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 10.0,
            percent: 0.8,
            header: Text(
              "Saúde",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            center: Icon(
              Icons.person_pin,
              size: 50.0,
              color: Colors.blue,
            ),
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
          ),
          SizedBox(
            height: 5,
          ),
          CircularPercentIndicator(
            radius: 120.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 10.0,
            percent: 0.5,
            header: Text(
              "Nível " + "12",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            center: Text(
              "70.0%",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.purple,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "10000000000",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.attach_money,
                size: 34,
                color: Colors.green,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
