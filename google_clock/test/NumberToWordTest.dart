import 'package:google_clock/src/helpers/NumberToWord.dart';
import 'package:intl/intl.dart';
import 'package:test/test.dart';

void main() {

  group('Time to Word', (){
    NumberToWord numberToWord=NumberToWord();

    test('1:30', () {
      expect(numberToWord.convert(1, 30), ' Half Past One   ');
    });

    test('2:45', (){
      expect(numberToWord.convert(2, 45).replaceAll(' ', ''),'QuaterToThree');
    });

    test('5:35', (){
      expect(numberToWord.convert(5, 35).replaceAll(' ', ''),'TwentyFiveMinutesToSix');
    });

    test('12:00', (){

      expect(numberToWord.convert(12, 0).replaceAll(' ', ''),"TwelveO'Clock");
    });

  });

}
