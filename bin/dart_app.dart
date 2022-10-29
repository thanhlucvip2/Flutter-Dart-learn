import 'package:dart_app/static_class.dart';

void main(List<String> arguments) {
  collection_set();
}

// ignore: non_constant_identifier_names
void collection_set() {
  var anotherSet = {1, 7, 3, 5, 2};
  print(anotherSet.contains(100)); // false

  anotherSet.add(9);
  print(anotherSet); // {1, 7, 3, 5, 2, 9}

  anotherSet.remove(3);
  print(anotherSet); // {1, 7, 5, 2, 9}

  anotherSet.addAll([9, 8, 7, 6]);
  print(anotherSet); // {1, 7, 5, 2, 9, 8, 6}

  var declareSet = <int>{15, 17, 20};
  anotherSet = anotherSet.union(declareSet);
  print(anotherSet); // {1, 7, 5, 2, 9, 8, 6, 15, 17, 20}
}
