import 'dart:math';

void main() {
  List<String> fruits = ["banana", "apple", "orange"];
  fruits.forEach((fruit) {
    print(fruit);
  });

  var cube = (int number) {
    return number * number * number;
  };
  print("cube of 2 is ${cube(2)}");

  int add(int num1, int num2) => num1 + num2;
  print(add(3, 5));

  print(myName());
  findEvens(1, 20);
  print(findArea(4));
  print(pythagoreanTheorem(3, 4));
  power(2, 5);
  String input = "hello world";
  reverseString(input);
  print(randomPassword(5));
}

String myName() {
  return "Mert Karahan";
}

void findEvens(start, end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print("$i is even");
    }
  }
}

double findArea(radius) {
  return radius * radius * pi;
}

double pythagoreanTheorem(base, height) {
  return sqrt(base * base + height * height);
}

void power(base, exponent) {
  int result = 1;
  for (int i = 1; i <= exponent; i++) {
    result = base * result;
  }
  print("$base power $exponent is : $result");
}

void reverseString(String input) {
  String reverse_input = input.split('').reversed.join();
  print("original input is $input");
  print("reversed output is $reverse_input");
}

String randomPassword(int length) {
  String characters =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+-=';
  String password = '';
  var random = new Random();

  for (var i = 0; i < length; i++) {
    password += characters[random.nextInt(characters.length)];
  }
  return password;
}
