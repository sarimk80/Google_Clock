import 'package:flutter/material.dart';
import 'package:google_clock/src/bloc/bloc.dart';
import 'package:test/test.dart';




void main() {
  group('Bloc Test', () {
    //Bloc Event Test
    test('Bloc Event Test Test', () {
      expect(Start().toString(), 'Start{}');
    });

    //Bloc State Test
    test('Bloc State Test', () {
      Color color = Color(0xffF1c40f);
      expect(InitialColorsState(color: Color(0xffF1C40F)).toString(),
          'InitialColorsState{color: $color}');
    });
    test('Bloc State Test Running', () {
      Color color = Color(0xffFFEAA7);
      expect(RunningColorState(color: Color(0xffFFEAA7)).toString(),
          'RunningColorState{color: $color}');
    });
  });

//  blocTest('Mock Color Bloc Test',
//      build: () => ColorsBloc(),
//      expect: [InitialColorsState(color: Color(0xffF1C40F))]);
}
