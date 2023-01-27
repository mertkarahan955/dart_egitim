import 'dart:io';

void main() {
  var age = 15;
  var check = (age >= 13 && age <= 19) ? 'Teenager' : 'Not Teenager';
  print(check);

  List players = ["mert", "karahan"];
  players.forEach((players) => print(players));

  print("Enter number");

  int i = int.parse(stdin.readLineSync()!);
  if (i % 2 == 0) {
    print("$i is even");
  } else {
    print("$i is odd");
  }

  if (i > 0) {
    print("$i is positive");
  } else if (i < 0) {
    print("$i is negative");
  } else {
    print("$i is zero");
  }

  for (int j = 1; j <= 4; j++) {
    print("mert");
  }
  int total = 0;
  for (int j = 0; j <= i; j++) {
    total += j;
  }
  print("Sum of all integers to $i is : $total");

  for (i = 0; i <= 10; i++) {
    int table_line = 5 * i;
    print("5x$i = $table_line");
  }
  for (i = 1; i <= 9; i++) {
    for (int j = 0; j <= 10; j++) {
      int table = i * j;
      print("$i x $j = $table");
    }
  }
  for (i = 1; i <= 100; i++) {
    if (i == 41) {
      continue;
    }
    print(i);
  }
  // basic calculator
  print("Welcome to Calculator");
  print("enter two numbers");

  stdout.write("Number 1 :");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Number 2: ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter an operator (+,-,*,/) :");
  String? operator = stdin.readLineSync();

  double result;
  switch (operator) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      result = num1 / num2;
      break;
    default:
      print("invalid operator");
      return;
  }
  print("result is $result");
}
