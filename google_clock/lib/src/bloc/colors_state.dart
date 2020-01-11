import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ColorsState {}

class InitialColorsState extends ColorsState {
  final Color color;

  InitialColorsState({@required this.color});

  @override
  String toString() {
    return 'InitialColorsState{color: $color}';
  }
}

class RunningColorState extends ColorsState {
  final Color color;
  final String hour_minute;
  final int hour;
  final int minute;
  final int second;


  RunningColorState(
      {@required this.color,
      @required this.hour_minute,
      this.hour,
      this.second,
      this.minute,
      });

  @override
  String toString() {
    return 'RunningColorState{color: $color}';
  }
}
