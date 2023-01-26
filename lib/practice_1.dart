import 'dart:io';
import 'dart:math';

void main() {
  print("Mert Karahan");
  print("Hello I am \"John Doe\" ");
  print("Hello I\'am \"John Doe\"");
  const int a = 7;
  print("Enter number: ");
  int value = int.parse(stdin.readLineSync()!);
  final num sonuc = pow(value, 2);
  print(sonuc);

  print("enter first number : ");
  int? num1 = int.parse(stdin.readLineSync()!);

  print("enter second number");
  int? num2 = int.parse(stdin.readLineSync()!);
  int remainder = num1 % num2;
  int quotient = num1 ~/ num2;
  print("quotient : $quotient remainder $remainder");

  String word = "123213";
  print(int.parse(word).runtimeType);

  print("enter total bill");
  double? total_bill = double.parse(stdin.readLineSync()!);
  print("enter number of people");
  int number_of_people = int.parse(stdin.readLineSync()!);
  splitBill(total_bill, number_of_people);
}

void splitBill(total, people) {
  double formula = total / people;
  print("each person will pay $formula");
}
