import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:google_clock/src/helpers/NumberToWord.dart';
import 'package:intl/intl.dart';
import './bloc.dart';
import 'package:flutter/material.dart';

class ColorsBloc extends Bloc<ColorsEvent, ColorsState> {
  final NumberToWord numberToWord;

  ColorsBloc(this.numberToWord);

  @override
  ColorsState get initialState => InitialColorsState(color: Color(0xffF1C40F));

  @override
  Stream<ColorsState> mapEventToState(ColorsEvent event) async* {
    if (event is Start) {
      yield* Stream.periodic(Duration(milliseconds: 500), (x) {
        String formatDate =
            DateFormat("yyyy-MM-dd hh:mm:ss").format(DateTime.now());

        DateTime datetime = DateTime.parse(formatDate);
        switch (datetime.hour) {
          case 1:
            {
              return RunningColorState(

                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xffF368e0),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 2:
            {
              return RunningColorState(

                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xfff1c40f),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 3:
            {
              return RunningColorState(

                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xffbc1a3a),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 4:
            {
              return RunningColorState(

                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xff2ecc71),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 5:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xff9b59b6),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 6:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xffFC427B),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 7:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xffffda79),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 8:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xffff7979),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }

          case 9:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xff0abde3),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 10:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xffbadc58),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 11:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xff3ae374),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          case 12:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xfff368e0),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
          default:
            {
              return RunningColorState(
                  hour: datetime.hour,
                  minute: datetime.minute,
                  second: datetime.second,
                  color: Color(0xffFF7675),
                  hour_minute:
                      numberToWord.convert(datetime.hour, datetime.minute));
            }
        }
      });
    }
  }

  @override
  String toString() {
    return 'ColorsBloc{}';
  }
}
