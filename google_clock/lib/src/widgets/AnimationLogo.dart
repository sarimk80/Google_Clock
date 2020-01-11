import 'package:flutter/material.dart';

class AnimationLogo extends AnimatedWidget {
  final Color color;
  AnimationLogo({@required Animation<double> animation,this.color})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation=listenable as Animation<double>;
    return Transform.rotate(
      angle: animation.value,
      child: Icon(
        Icons.wb_sunny,
        size: 15,
        color: color,
      ),
    );
  }
}
