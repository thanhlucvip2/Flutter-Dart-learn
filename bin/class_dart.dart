// CLASS
class Cat {
  //field
  String name = 'Milo';

  // Function
  void call() {
    print('Hello Milo');
  }
}

// getter setter
class Location {
  double? _lat;
  double? _lng;

  // get value
  double? get long => _lng;
  double? get lat => _lat;

  // set value
  set setLat(double value) => _lat = value;
  set setLong(double value) => _lng = value;

  // constructor
  Location(this._lat, this._lng);

  // constructor name
  Location.WithPosition(double lat, double long) {
    _lat = lat;
    _lng = long;
  }
}

void TestClassLocation() {
  final test = new Location(11, 11);
  // get value
  print(test.long); //11.0
  print(test.lat); //11.0

  // set value
  test.setLat = 22;
  test.setLong = 22;

  // get value
  print(test.long); //22.0
  print(test.lat); //22.0

  final test2 = new Location.WithPosition(66, 77);
  // get value
  print(test2.long); // 77.0
  print(test2.lat); // 66.0
}

//STATIC CLASS
class StaticClass {
  static String name = 'doan thanh luc';
  static void setStaticName(String newName) {
    name = newName;
  }
}

void TestStaticClass(List<String> arguments) {
  print(StaticClass.name); //doan thanh luc
  StaticClass.setStaticName('test2');
  print(StaticClass.name); //test2
}
