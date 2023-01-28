void main() {
  Laptop laptop = Laptop(2020, 'mert', 16);
  laptop.display();
  // -----------------
  for (Genders gender in Genders.values) {
    print(gender);
  }
  //-------------------

  Cat cat = Cat('odin', 'orange', 'miav');
  print("name: ${cat.name}");
  print("color: ${cat.color}");
  print("sound: ${cat.sound}");
  //-------------------

  Camera cam = Camera(123, 'nokia', 'black', 1000);
  cam.display();

  CokeBottle cokeBottle = CokeBottle();
  cokeBottle.open();
}

// first
class Laptop {
  int? id;
  String? name;
  int? ram;

  Laptop(this.id, this.name, this.ram);
  void display() {
    print('id is : ${this.id}');
    print('name is : ${this.name}');
    print('ram is : ${this.ram}');
  }
}
// -----------------------

enum Genders { male, female, others }

// -----------------------
// second
class Animal {
  String? name;
  String? color;

  Animal(this.name, this.color);
}

class Cat extends Animal {
  String? sound;
  Cat(name, color, this.sound) : super(name, color);
}

//-------------------
// third

class Camera {
  int? _id;
  String? _brand;
  String? _color;
  int? _prize;

  set id(int id) => this._id = id;
  set brand(String brand) => this._brand = brand;
  set color(String color) => this._color = color;
  set prize(int prize) => this._prize = prize;

  int get id => this.id;
  String get brand => this.brand;
  String get color => this.color;
  int get prize => this.prize;

  Camera(this._id, this._brand, this._color, this._prize);
  void display() {
    print('id is ${this._id}');
    print('brand is ${this._brand}');
    print('color is ${this._color}');
    print('prize is ${this._prize}');
  }
}
//**********************************

// fourth

abstract class Bottle {
  void open();
  factory Bottle() {
    ;
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print('Coke bottle is opened');
  }
}
