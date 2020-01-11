import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class RadialClock extends StatelessWidget {
  final int hour;
  final int minutes;
  final int seconds;
  final color;

  RadialClock({this.hour, this.minutes, this.seconds, this.color});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedCircularChartState> _chartKey =
        new GlobalKey<AnimatedCircularChartState>();

    List<CircularStackEntry> data = <CircularStackEntry>[
      CircularStackEntry(
        <CircularSegmentEntry>[
          CircularSegmentEntry(
            this.hour.roundToDouble(),
            this.color,
          ),
        ],
      ),
      CircularStackEntry(
        <CircularSegmentEntry>[
          CircularSegmentEntry(
            this.minutes.roundToDouble(),
            this.color.withOpacity(0.5),
          ),
        ],
      ),
      CircularStackEntry(
        <CircularSegmentEntry>[
          CircularSegmentEntry(
            this.seconds.roundToDouble(),
            this.color.withOpacity(0.2),
          ),
        ],
      ),
    ];

    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff303030),
        boxShadow: [
          BoxShadow(
            color: Color(0xff232323),
            offset: Offset(3, 3),
            blurRadius: 3,
          ),
          BoxShadow(
            color: Color(0xff3d3d3d),
            offset: Offset(-1, -1),
            blurRadius: 0.5,
          ),
        ],
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: Color(0xff303030),
              ),
              shape: BoxShape.circle,
              color: Color(0xff303030),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff232323),
                  offset: Offset(5, 5),
                  blurRadius: 6,
                ),
                BoxShadow(
                  color: Color(0xff232323),
                  offset: Offset(-5, -5),
                  blurRadius: 6,
                ),
              ],
            ),
            child: ClipPath(
              clipper: CircleClipper(),
              child: WaveWidget(
                waveFrequency: 1,
                waveAmplitude: 10,
                wavePhase: 1,
                size: Size(double.infinity, double.infinity),
                config: CustomConfig(
                  gradients: [
                    [
                      Color(0xff232323).withOpacity(0.2),
                      Color(0xff232323).withOpacity(0.2),
                    ],
                    [
                      Color(0xff232323).withOpacity(0.2),
                      Color(0xff232323).withOpacity(0.2),
                    ],
                    [
                      this.color.withOpacity(0.1),
                      this.color.withOpacity(0.1),
                    ],
                    [
                      this.color,
                      this.color,
                    ]
                  ],
                  durations: [35000, 19440, 10800, 6000],
                  heightPercentages: [
                    1.2,
                    1.2,
                    this.hour / 10 - 0.1,
                    this.hour / 10 - 0.15,
                  ],
                  blur: MaskFilter.blur(BlurStyle.solid, 1),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
              ),
            ),
          ),
          AnimatedCircularChart(
            duration: Duration(milliseconds: 0),
            key: _chartKey,
            size: Size(150, 150),
            edgeStyle: SegmentEdgeStyle.round,
            percentageValues: true,
            initialChartData: data,
            chartType: CircularChartType.Radial,
            holeRadius: 40,
            holeLabel:
                '${this.hour} : ${this.minutes.toString().padLeft(2, '0')}',
            labelStyle: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'Calistoga'),
          ),
        ],
      ),
    );
  }
}
