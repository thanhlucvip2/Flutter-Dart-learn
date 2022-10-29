// dimanic list

// ignore: non_constant_identifier_names
// ADD
void collection_list() {
  var country = ['vietnam', 'dsadas', 'dasd'];
  country.add('test');
  print(country); // [vietnam, dsadas, dasd, test]

  country.insert(1, 'test insert');
  print(country); // [vietnam, test insert, dsadas, dasd, test]
}

// SET
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
