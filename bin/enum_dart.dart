void TestEnum() {
  print(Weekdays
      .values); //[Weekdays.MON, Weekdays.TUES, Weekdays.WED, Weekdays.THURS, Weekdays.FRI, Weekdays.SAT, Weekdays.SUN]

  var tuday = Weekdays.THURS;

  switch (tuday) {
    case Weekdays.MON:
    case Weekdays.WED:
    case Weekdays.THURS:
    case Weekdays.FRI:
      print('not sun');
      break;
    case Weekdays.SUN:
      print('is sun day');
      break;
    default:
      print('is sat');
      break;
  }
}

// Enum
enum Weekdays { MON, TUES, WED, THURS, FRI, SAT, SUN }
