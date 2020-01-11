import 'package:flutter/material.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:intl/intl.dart';

import 'AnimationLogo.dart';
import 'dart:math' as math;

class ClockDetails extends StatefulWidget {
  final Color color;
  final ClockModel model;

  ClockDetails(this.color, this.model);

  @override
  _ClockDetailsState createState() => _ClockDetailsState();
}

class _ClockDetailsState extends State<ClockDetails>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);

    animation =
        Tween<double>(begin: 0, end: 2 * math.pi).animate(animationController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              animationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              animationController.forward();
            }
          });
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat("EEE, MMM d, ''yy");
    String date = dateFormat.format(DateTime.now());
    return Center(
      child: Wrap(
        spacing: 80,
        direction: Axis.horizontal,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                widget.model.temperatureString,
                style: TextStyle(
                    fontFamily: 'Calistoga', fontSize: 15, letterSpacing: 1),
              ),
              Padding(
                padding: EdgeInsets.all(3),
              ),
              Text(
                widget.model.lowString + " - " + widget.model.highString,
                style: TextStyle(
                    fontFamily: 'Calistoga', fontSize: 10, letterSpacing: 1),
              ),
              Padding(
                padding: EdgeInsets.all(3),
              ),
              Text(
                date,
                style: TextStyle(
                    fontFamily: 'Calistoga', fontSize: 10, letterSpacing: 1),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              AnimationLogo(animation: animation, color: widget.color),
              Padding(
                padding: EdgeInsets.all(3),
              ),
              Text(
                widget.model.weatherString,
                style: TextStyle(
                    fontFamily: 'Calistoga', fontSize: 12, letterSpacing: 1),
              ),
              Padding(
                padding: EdgeInsets.all(3),
              ),
              Text(
                widget.model.location,
                style: TextStyle(
                    fontFamily: 'Calistoga', fontSize: 12, letterSpacing: 1),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
