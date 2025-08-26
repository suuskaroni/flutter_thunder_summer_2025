import 'dart:ffi';

void main() {
  print('hello'.toUpperCase());
  String greetings = 'сайн уу?';

  print(greetings.capitalize());
  Animal genericAnimal = Animal();
  genericAnimal.makeSound();
  Cat myCat = Cat();
  myCat.makeSound();
  Dog myDog = Dog();
  myDog.makeSound();

  Rectangle myRectangle = Rectangle(10, 5);
  myRectangle.calculateArea();
  print(myRectangle.calculateArea());

  Guitarist gitarchin = Guitarist();
  gitarchin.playInstrument();
  Pianist pianister = Pianist();
  pianister.playInstrument();
  Novel novely = Novel();
  novely.read();
}

extension StringCapitalization on String {
  String capitalize() {
    if (this.isEmpty) {
      return "";
    }
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

class Animal {
  void makeSound() {
    print('Ямар нэг амьтан дугарч байна.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    // TODO: implement makeSound
    print('Нохой хуцаж байна : Хав хав!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Муур мяавлаж байна : Мяу!');
  }
}

class Shape {
  calculateArea() {
    return 0;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  calculateArea() {
    // TODO: implement calculateArea
    return 'Тэгш өнцөгтийн талбай: ${width * height}';
  }
}

extension NumberSignCheck on int {
  String getSign() {
    if (this > 0) {
      return 'Эерэг тоо';
    } else if (this < 0) {
      return 'Сөрөг тоо';
    } else {
      return 'Тэг';
    }
  }
}

class Musician {
  playInstrument() {
    return 'Хөгжим тоглож байна.';
  }
}

class Guitarist extends Musician {
  @override
  playInstrument() {
    // TODO: implement playInstrument
    print('Гитар тоглож байна.');
  }
}

class Pianist extends Musician {
  @override
  playInstrument() {
    // TODO: implement playInstrument
    print('Төгөлдөр хуур тоглож байна.');
  }
}

class Book {
  read() {
    return 'Ном уншиж байна.';
  }
}

class Novel extends Book {
  @override
  read() {
    // TODO: implement read
    print('Сонирхолтой түүх уншиж байна.');
  }
}