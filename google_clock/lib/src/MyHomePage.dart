import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:google_clock/src/bloc/bloc.dart';
import 'package:google_clock/src/helpers/NumberToWord.dart';
import 'package:google_clock/src/widgets/HomeWidget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  final ClockModel model;

  MyHomePage({Key key, this.model}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Color block
  /*
  Color Bloc is use to change the color
  after every hour and change the text after every minute.
   */
  ColorsBloc colorsBloc;

  /*
  Number to Word is a simple dart file
  that takes two ints hour and minutes
  and converts it into word time.
   */
  NumberToWord numberToWord;

  @override
  void initState() {
    super.initState();
    numberToWord = NumberToWord();
    colorsBloc = ColorsBloc(numberToWord);
    colorsBloc.add(Start());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder(
          bloc: colorsBloc,
          builder: (_, ColorsState state) {
            if (state is RunningColorState) {
              return HomeWidget(state.color, state.hour_minute, state.hour,
                  state.minute, state.second, widget.model);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    colorsBloc.close();
    super.dispose();
  }
}
