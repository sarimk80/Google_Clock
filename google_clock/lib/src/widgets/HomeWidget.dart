import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:google_clock/src/widgets/ClockDetails.dart';
import 'package:google_clock/src/widgets/TextAnimation.dart';
import 'package:provider/provider.dart';

import 'RadialClock.dart';

class HomeWidget extends StatefulWidget {
  final Color color;
  final String hourMinute;
  final int hour;
  final int minutes;
  final int seconds;
  final ClockModel model;

  HomeWidget(this.color, this.hourMinute, this.hour, this.minutes, this.seconds,
      this.model);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RadialClock(
                      hour: widget.hour,
                      minutes: widget.minutes,
                      seconds: widget.seconds,
                      color: widget.color,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Flexible(
                      child: TextAnimation(widget.hourMinute, widget.color),
                    )
                  ],
                ),
              ),
            ),
            ChangeNotifierProvider<ClockModel>(
              create: (context) => ClockModel(),
              child: Consumer<ClockModel>(
                builder: (context, model, child) =>
                    ClockDetails(widget.color, widget.model),
              ),
              // child: ClockDetails(widget.color),
            ),
          ],
        ),
      ],
    );
  }
}
