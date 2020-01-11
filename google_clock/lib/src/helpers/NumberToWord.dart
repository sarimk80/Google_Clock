class NumberToWord {
  String convert(int hours, int minutes) {
    var _units = [
      'Twelve',
      'One',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Eleven',
      'Twelve',
      'Thirteen',
      'Fourteen',
      'Fifteen',
      'Sixteen',
      'Seventeen',
      'Eighteen',
      'Ninteen',
      'Twenty',
      'Twenty One',
      'Twenty Two',
      'Twenty Three',
      'Twenty Four',
      'Twenty Five',
      'Twenty Six',
      'Twenty Seven',
      'Twenty Eight',
      'Twenty Nine',
      'Thirty',
      'Thirty One',
      'Thirty Two',
      'Thirty Three',
      'Thirty Four',
    ];

    if (minutes == 0) {
      return  _units[hours]+" O'Clock " +" "+" "+" ";
    }

    if (minutes == 15) {
      return " Quater Past " + _units[hours]+" "+" "+" ";
    }

    if (minutes == 30) {
      return " Half Past " + _units[hours]+" "+" "+" ";
    }

    if (minutes == 45) {
      return "Quater To " + _units[hours + 1]+" "+" "+" ";
    }
    if(minutes==45 && hours==12){
      return "Quater To " + _units[0 + 1]+" "+" "+" ";
    }

    if (minutes < 30) {
      return _units[minutes] + " Minutes Past " + _units[hours]+" ";
    } if(hours>=12){
      return _units[60-minutes] + " Minutes To " + _units[0 + 1]+" ";
    }
    else {
      return _units[60-minutes] + " Minutes To " + _units[hours + 1]+" ";
    }
  }

}
