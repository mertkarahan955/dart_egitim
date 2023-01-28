// oop

void main() {
  Bicycle bicycle = Bicycle();
  bicycle.color = "Red";
  bicycle.size = 26;
  bicycle.currentSpeed = 0;
  bicycle.changeGear(5);
  bicycle.display();

  Student student = Student("mert", 20);
  print(student.age);
  Person person = Person("mert", 20, 20.000);
  person.display();

  Patient patient = Patient("mert", 20, "corona");
  patient.display();

  // Create an object of Employee2 class
  Employee2 emp = Employee2();
  // setting values to the object using setter
  emp.setId(1);
  emp.setName("John");

  // Retrieve the values of the object using getter
  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");

  var vehicle = Vehicle();
  vehicle.model = "Toyota";
  vehicle.year = "2019";
  print(vehicle.model);
  print(vehicle.year);

// ***************************

  getter_setter_Student st = getter_setter_Student();
  st.firstName = "john";
  st.lastName = "doe";
  st.age = 20;
  // Display the values of the object
  print("Full Name: ${st.fullName}");
  print("Age: ${st.age}");

  // ***************************
  for (Days day in Days.values) {
    print(day);
  }

  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();

  Rectangle2 rectangle = Rectangle2(2, 3);
  rectangle.area();
  Triangle triangle = Triangle(3, 4);
  triangle.area();

  var car2 = Car2();
  car2.electricVariant();
  car2.petrolVariant();
}

class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  void display() {
    print("Color: $color");
    print("Size: $size");
    print("Current Speed: $currentSpeed");
  }
}

class Student {
  String? name;
  int? age;

//contructor
  Student(String name, int age) {
    print("constructor called");
    this.name = name;
    this.age = age;
  }
}

class Person {
  String? name;
  int? age;
  String? subject;
  double? salary;
  // one line constructor
  Person(this.name, this.age, this.salary,
      [this.subject = "null"]); // subject is optional ,

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

class Patient {
  String? name;
  int? age;
  String? disease;
  Patient(this.name, this.age, this.disease);

  void display() {
    print("name is :$name");
    print("age is : $age");
    print("diease is : $disease");
  }
}

class Employee2 {
  int? _id;
  String? _name;
  // Getter method to access private property _id
  int getId() {
    return _id!;
  }

// Getter method to access private property _name

  String getName() {
    return _name!;
  }

  // Setter method to update private property _id
  void setId(int id) {
    this._id = id;
  }

  // Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }
}

class Vehicle {
  late String _model;
  late String _year;

  // getter method
  String get model => _model;

  // setter method
  set model(String model) => _model = model;

  // getter method
  String get year => _year;

  // setter method
  set year(String year) => _year = year;
}

// getter examples

class Doctor {
// Private properties
  String _name;
  int _age;
  String _gender;

// Constructor
  Doctor(this._name, this._age, this._gender);

// Getters
  String get name => _name;
  int get age => _age;
  String get gender => _gender;

// Map Getter
  Map<String, dynamic> get map {
    return {"name": _name, "age": _age, "gender": _gender};
  }
}

// setter examples
class NoteBook {
  // Private properties
  String? _name;
  double? _prize;

  // Setter to update the value of name property

  set name(String name) => _name = name;

  // Setter to update the value of prize property
  set prize(double prize) {
    if (prize < 0) {
      throw Exception("Price cannot be less than 0");
    }
    this._prize = prize;
  }
}

// use of getter and setter

//
class getter_setter_Student {
  // Private Properties
  String? _firstName;
  String? _lastName;
  int? _age;

  // Getter to get full name
  String get fullName => this._firstName! + " " + this._lastName!;

  // Getter to read private property _age
  int get age => this._age!;

  // Setter to update private property _firstName
  set firstName(String firstName) => this._firstName = firstName;

  // Setter to update private property _lastName
  set lastName(String lastName) => this._lastName = lastName;

  // Setter to update private property _age
  set age(int age) {
    if (age < 0) {
      throw new Exception("Age can't be less than 0");
    }
    this._age = age;
  }
}

enum Days { Sunday, Monday, Friday, Tuesday }

// abstract class examples

abstract class Vehicle2 {
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  void start() {
    print('car started');
  }

  void stop() {
    print('car stopped');
  }
}

class Bike extends Vehicle2 {
  @override
  void start() {
    print('Bike started');
  }

  @override
  void stop() {
    print('Bike stopped');
  }
}

abstract class Shape {
  late int dim1, dim2;

  Shape(this.dim1, this.dim2);
  void area();
}

class Rectangle2 extends Shape {
  Rectangle2(int dim1, int dim2) : super(dim1, dim2);

  @override
  void area() {
    print("area of the rectangle is ${dim1 * dim2}");
  }
}

class Triangle extends Shape {
  Triangle(int dim1, int dim2) : super(dim1, dim2);

  @override
  void area() {
    print("area of the triangle is ${dim1 * dim2 / 2}");
  }
}

// mixin

mixin ElectricVariant {
  void electricVariant() {
    print('This is an electric variant');
  }
}

mixin PetrolVariant {
  void petrolVariant() {
    print('This is a petrol variant');
  }
}

// with is used to apply the mixin to the class
class Car2 with ElectricVariant, PetrolVariant {
  // here we have access of electricVariant() and petrolVariant() methods
}

abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  // abstract method
  void run();
}

// mixin CanRun is only used by class that extends Animal
mixin CanRun on Animal {
  // implementation of abstract method
  @override
  void run() => print('$name is Running at speed $speed');
}

class Dog extends Animal with CanRun {
  // constructor
  Dog(String name, double speed) : super(name, speed);
}
