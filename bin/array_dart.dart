// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

// 1. forEach()
// Function này giúp chúng ta lấy ra được từng phần tử ở trong danh sách từ vị
// trí đầu tiên đến vị trí cuối cùng. Ở ví dụ bên dưới, chúng ta print ra lần
// lượt các phần tử đó trên terminal.
void forEach_dart() {
  var fruits = ["banana", "pineapple", "watermelon"];
  fruits.forEach((fruit) => print(fruit)); // => banana pineapple watermelon
}

// 2. map()
// Function này giúp chúng ta tạo một danh sách mới sau khi chuyển đổi từng
// element trong một danh sách cho trước. Ở ví dụ bên dưới, chúng ta có được
// một danh sách mới và gán giá trị đó sang cho biến
void map_dart() {
  var fruits = ["banana", "pineapple", "watermelon"];
  var mappedFruits = fruits.map((fruit) => "I love $fruit").toList();
  print(mappedFruits);
  // => ['I love banana', ‘I love pineapple’, ‘I love watermelon’]
}

// 3. contains().
// Function này giúp chúng ta kiểm tra để xác nhận rằng element đó có nằm trong
// danh sách hay không. Nếu có thì chương trình sẽ trả về true và ngược lại
// trả về false.
void constains_dart() {
  var numbers = [1, 3, 2, 5, 4];
  print(numbers.contains(2)); // => true
  print(numbers.contains(6)); // => false
}

// 4. sort()
// Sắp xếp các element của danh sách dựa trên yêu cầu được cung cấp. Dưới đây
// là ví dụ sắp xếp 1 danh sách kiểu int giá trị từ nhỏ đến lớn.
void sort_dart() {
  var numbers = [1, 3, 2, 5, 4];
  numbers.sort((num1, num2) => num1 - num2); // => [1, 2, 3, 4, 5]
}

// 5. reduce(), fold()
// Nén các element trong danh sách thành một giá trị duy nhất, kết hợp với hàm
// được đưa vào.
void reduce_dart() {
  var numbers = [1, 3, 2, 5, 4];
  var sum = numbers.reduce((curr, next) => curr + next);
  print(sum); // => 15
}

void fold() {
  var numbers = [1, 3, 2, 5, 4];
  const initialValue = 10;
  var sum2 = numbers.fold(initialValue, (curr, next) => curr + next);
  print(sum2); // => 25
}

// 6. every()
// Xác nhận rằng mọi element đều thỏa mãn test mà chúng ta đưa vào. Do đó, nếu
// bất kỳ phần tử nào trong danh sách không thoả mãn điều kiện, chương trình
// sẽ trả về giá trị false.
void every_dart() {
  List<Map<String, dynamic>> users = [
    {"name": "John", "age": 18},
    {"name": "Jane", "age": 21},
    {"name": "Mary", "age": 23},
  ];
  var is18AndOver = users.every((user) => user["age"] >= 18);
  print(is18AndOver); // => true

  var hasNamesWithJ = users.every((user) => user["name"].startsWith('J'));
  print(hasNamesWithJ); // => false
}

// 7. where(), firstWhere(), singleWhere()
// Trả về collection các element thỏa mãn điều kiện chúng ta đưa vào.
// firstWhere() trả về kết quả phù hợp đầu tiên trong danh sách, trong khi
// singleWhere() trả về kết quả phù hợp đầu tiên miễn là có đúng một kết quả phù hợp.
void where_dart() {
  List<Map<String, dynamic>> users = [
    {"name": "John", "age": 18},
    {"name": "Jane", "age": 21},
    {"name": "Mary", "age": 23},
  ];
  var over21s = users.where((user) => user["age"] > 21);
  print(over21s.length); // => 1
  print(over21s.toList()); // => [{name: Mary, age: 23}]
}

void firstWhere_dart() {
  List<Map<String, dynamic>> users = [
    {"name": "John", "age": 18},
    {"name": "Jane", "age": 21},
    {"name": "Mary", "age": 23},
  ];
  var nameJ = users.firstWhere((user) => user['name'].startsWith('J'),
      orElse: () => {});
  print(nameJ); // => {name: John, age: 18}
}

// nếu singleWhere_dart torng mảng có 2 giá trị thỏa mảng thì lỗi
void singleWhere_dart() {
  List<Map<String, dynamic>> users = [
    {"name": "John", "age": 18},
    {"name": "Jane", "age": 21},
    {"name": "Mary", "age": 23},
  ];
  var under18s =
      users.singleWhere((user) => user["age"] < 18, orElse: () => {});
  print(under18s); // => {}
}

// 8. take(), skip()
// Trả về một collection mới khi chứa hoặc bỏ qua các element trong danh sách.
// dùng để phân trang
void Take_Skip_dart() {
  print([1, 2, 3, 5, 8, 13, 21].take(3).toList()); // => [1, 2, 3]
  print([1, 2, 3, 5, 8, 13, 21].skip(5).toList()); // => [13, 21]
  print([1, 2, 3, 5, 8, 13, 21].take(3).skip(2).take(1).toList()); // => [3]
}

// 9. List.from()
// Tạo danh sách mới từ collection đã cho.
void List_dart() {
  var fiboNumbers = [1, 2, 3, 5, 8, 13, 21];
  var clonedFiboNumbers = List.from(fiboNumbers);
  print("Cloned list: $clonedFiboNumbers");
}

// 10. expand()
// Mở rộng từng element thành không hoặc nhiều element.
void expand_dart() {
  var pairs = [
    [1, 2],
    [3, 4],
  ];
  var flattened = pairs.expand((pair) => pair).toList();
  print('Flattened result: $flattened'); // => [1, 2, 3, 4]

  var input = [1, 2, 3];
  var duplicated = input.expand((i) => [i, i, i]).toList();
  print(duplicated); // => [1, 1, 1, 2, 2, 2, 3, 3, 3]

  var duplicated2 = input.expand((i) => [i, i + 1, i + 2]).toList();
  print(duplicated2); // => [1, 2, 3, 2, 3, 4, 3, 4, 5]
}
