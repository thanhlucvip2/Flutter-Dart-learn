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

// MAP
void colection_map() {
  final student = {
    "id": 1,
    "name": "Barry Allen",
    "age": 23,
  };

  print(student); //{id: 1, name: Barry Allen, age: 23}

  print(student["name"]); // Barry Allen

  student.keys.forEach(print); // id name age

  student.update("age", (value) => 20);
  print(student); //{id: 1, name: Barry Allen, age: 20}

  student.forEach((key, value) {
    print('$key - $value');
  });
  // id - 1
  // name - Barry Allen
  // age - 20
}
