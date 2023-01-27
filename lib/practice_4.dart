import 'dart:io';

void main() {
  // list
  List<String> names = ["Raj", "John", "Rocky"];
  print(names.reversed);
  print(names[0]);
  names.add("add");
  names.addAll(["a", "b"]);
  print(names);
  names.insert(1, "1");
  print(names.runtimeType);
  names.insertAll(0, ["c", "b"]);
  print(names);
  names.replaceRange(0, 3, ["k", "j", "l"]);
  print(names);

  names.forEach((name) => {print(name)});
  print(names.map((e) => e + "e"));

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> even_numbers = numbers.where((number) => number.isEven).toList();
  print(even_numbers);

  // set
  Set<int> number = {1, 2};
  number.clear();
  print(number);
  Set<String> fruits = {"apple", "orange", "banana", "mango"};
  Set<String> fruits2 = {"a", "b", "orange", "mango"};
  final differenceSet = fruits.difference(fruits2);
  print(differenceSet);
  fruits.add("coconut");
  fruits.remove("apple");
  fruits.removeWhere((element) => element.startsWith("o"));
  print(fruits);

  print(fruits.elementAt(2));
  final intersectSet = fruits.intersection(fruits2);
  print(intersectSet);
  fruits.removeWhere((element) => element.startsWith("o"));
  print(fruits);

  // map
  Map<String, String> countryCapital = {
    'USA': 'Washington, D.C.',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  print(countryCapital["USA"]);
  print("keys of countryCapital ${countryCapital.keys}");
  countryCapital['Japan'] = 'Tokio';
  print(countryCapital);
  print(countryCapital.keys.toList());
  print(countryCapital.values.toList());
  print(countryCapital.containsValue("Ankara"));
  countryCapital.remove("USA");
  print(countryCapital);
  countryCapital.remove("Tokio"); // doesn't work because it works for keys
  print(countryCapital);

  for (MapEntry countryCapital in countryCapital.entries) {
    print("Key is ${countryCapital.key}, value ${countryCapital.value}");
  }

  countryCapital.forEach((key, value) {
    print('key is $key and value is $value');
  });

  countryCapital
      .removeWhere((key, value) => key.startsWith("U")); // usa is deleted
  print(countryCapital);

  // question answers

  List<String> names2 = ["mert", "karahan", "elif", "zengin"];
  names2.forEach((element) {
    print(element);
  });

  List<String> days = [];

  days.addAll([
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday",
    "saturday",
    "sunday"
  ]);
  print(days);

  List<String> friend_names = ["erkin", "arda", "egemen", "sarp", "ali"];
  print(friend_names.where((element) => element.startsWith('a')).toList());

  Map<String, dynamic> id = {
    'name': 'mert',
    'address': 'aydin',
    'age': 20,
    'country': 'Turkey'
  };
  id['Turkey'] = 'Belgium';

  id.forEach((key, value) {
    print("keys : $key, values : $value");
  });

  Map<String, String> id_2 = {'name': 'elif', 'phone': 'iphone'};

  List<String> id_2_keys = [];
  id_2.forEach((key, value) {
    id_2_keys.add(key);
  });

  print(id_2_keys.where((element) => element.length == 4).toList());

  var expenses = <double>[];

  while (true) {
    stdout.write("Enter expense amount (or 'done' to quit): ");
    var expense = stdin.readLineSync();
    if (expense == 'done') break;
    expenses.add(double.parse(expense!));
  }

  var total = expenses.reduce((value, element) => value + element);
  print("Total expenses: $total");
  to_do_app();
}

void to_do_app() {
  List<String> to_do = [];
  stdout.write("what do you want type add remove view");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case 'add':
      stdout.write("what do you want do add?");
      String? add = stdin.readLineSync();
      to_do.add(add!);
      break;
    case 'remove':
      stdout.write("what do you want do delete?");
      String? remove = stdin.readLineSync();
      to_do.remove(remove);
      break;
    case 'view':
      print(to_do);
      break;
    default:
      print("invalid operator");
  }
}
