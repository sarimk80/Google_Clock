import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'SpacePainter.dart';

class SpaceField extends StatefulWidget {
  final double starSpeed;
  final int starCount;
  final Color color;

  SpaceField({this.starSpeed, this.starCount,this.color});

  @override
  _SpaceFieldState createState() => _SpaceFieldState();
}

class _SpaceFieldState extends State<SpaceField> {
  List<Star> _stars;
  double _maxZ = 500;
  double _minZ = 1;

  Ticker _ticker;

  void _initStars(BuildContext context) {
    //Start async image load

    //Create stars, randomize their starting values
    _stars = [];
    for (var i = widget.starCount; i-- > 0;) {
      var s = _randomizeStar(Star(), true);
      _stars.add(s);
    }
    _ticker = new Ticker(_handleStarTick)..start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_stars == null) {
      _initStars(context);
    }
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xff303030),
      child: CustomPaint(
        painter: SpacePainter(
          stars: _stars,
        ),
      ),
    );
  }

  void _handleStarTick(Duration elapsed) {
    setState(() {
      advanceStars(widget.starSpeed);
    });
  }

  void advanceStars(double distance) {
    _stars.forEach((s) {
      //Move stars on the z, and reset them when they reach the viewport
      s.z -= distance; // * elapsed.inMilliseconds;
      if (s.z < _minZ) {
        _randomizeStar(s, false);
      } else if (s.z > _maxZ) {
        s.z = _minZ;
      }
    });
  }

  Star _randomizeStar(Star star, bool randomZ) {
    Random rand = Random();
    star.x = (-1 + rand.nextDouble() * 2) * 75;
    star.y = (-1 + rand.nextDouble() * 2) * 75;
    star.z = randomZ ? rand.nextDouble() * _maxZ : _maxZ;
    star.rotation = rand.nextDouble() * pi * 2;
    //Some fraction of stars are purple, and bigger than the rest
    if (rand.nextDouble() < .1) {
      star.color = widget.color;
      star.size = 2 + rand.nextDouble() * 2;
    } else {
      star.color = Colors.white;
      star.size = .5 + rand.nextDouble() * 2;
    }
    return star;
  }
}
