import 'dart:math';

// // EX8-g  5 hurtel hiine
//

// Exercise 01 , 02 Dart - 8
void main() {
  // Restaurant chinese = Restaurant('Xiexie', 'Chinese', true);
  // Restaurant restaurant = Restaurant('guciMane', 'italian', false);
  // Restaurant Mongolian = Restaurant('Их Монгол', 'Mongolian', true);
  // Restaurant Caucasian = Restaurant('Caucasian', 'Caucasian', false);
  // print(restaurant.cusineType);
  // print(restaurant.restaurantName);
  // print(restaurant);
  // print(restaurant.describeRestaurant());
  // print(restaurant.openRestaurant());
  // print(chinese.isOpen);
  // print(chinese.restaurantName);
  // print(chinese.describeRestaurantChinese());
  // print(Mongolian.describeRestaurantMongolian());
  // print(Caucasian.describeRestaurantCaucasian());
  // User user = User('Hulan', 'Bold');
  // print(user.describeUser());
  // print(user.greetUser());
  //
  // User Susu = User('Susu', 'Suus');
  // print(Susu.greetSusu());
  // print(Susu.describeSusu());
  // chinese.setNumberServed(5);
  // print(chinese.numberServed);
  // chinese.incrementNumberServed();
  // print(chinese.numberServed);
  // print(chinese.describeRestaurantChinese());
  // print(Mongolian.numberServed);
  // Mongolian.incrementNumberServed();
  // print(Mongolian.describeRestaurantMongolian());

  // User user2 = User('hehe', 'hoho');
  // user2.incrementLoginAttempts(); //
  // user2.incrementLoginAttempts(); //
  // user2.incrementLoginAttempts(); //
  // user2.incrementLoginAttempts(); //
  // user2.incrementLoginAttempts(); //
  // print(user2.loginAttempts);
  // user2.resetLoginAttempts();
  // print(user2.loginAttempts); //   User dummy = User();
  //
  //   print(dummy.id);
  //   print(dummy.name);
  //
  //   User testdummy = User();
  //   testdummy.id = 2;
  //   testdummy.name = 'Dummy1';
  //   print(testdummy.id);
  //   print(testdummy.name);
  //
  //   print(Human(2, 2, 1, 'Khangaikhuu'));
  //
  //   Circle buurunhii = Circle(5);
  //
  //   print(buurunhii.calcarea());
  //   print(buurunhii.calcDiameter());
  //   print(buurunhii);

  // Book book = Book(320, 'Цагаан сүрэг', 'Ч.Лодойдамба');
  // print(book.toString());
  // book.shortStory();
  // print(book.toString());
  // bankAccount account = bankAccount('10119090', 0);
  // account.createAccountNumber();
  // print('The new account number is ${account.createAccountNumber()}');
  // print(account.myBalance());
  //
  // print(account.balance);
  // account.deposit(1500);
  // print(account.balance);
  // account.withdraw(250.52);
  // print(account.balance);

  // Student student = Student('Bataa', 90, 80, 70);
  // print(student.avg);
  // student.averageGrade();
  // print(student.avg);


  Square square = Square(10, 10);
  square.squares();
  print(square.square);
  square.quadrats();
  print(square.quadrat);
}
//
//
// class User {
//   int id = 1;
//   String name = 'Dummy';
// }
//
// // Class Constructor
//
// class Human {
//   int legs;
//   int eyes;
//   int body;
//   String name;
//
//   Human(this.legs, this.eyes, this.body, this.name);
//
//   @override
//   String toString() {
//     return 'Human has ${legs} legs, ${eyes} eyes, ${body} body and it called ${name}';
//   }
// }
//
//
// class Circle {
//   double radius;
//
//   Circle(this.radius);
//
//
//   double calcarea() {
//     return 2 * pi * radius;
//   }
//
//   double calcDiameter () {
//     return radius * radius;
//   }
//
//   @override
//   String toString() {
//     return 'Circle-n talbai ni ${calcarea()}, Diameter ni ${calcDiameter()}';
//   }
// }

class Restaurant {
  String restaurantName;
  String cusineType;
  bool isOpen;
  int numberServed = 0;

  Restaurant(this.restaurantName, this.cusineType, this.isOpen);

  String describeRestaurant() {
    return "This Restaurant's name is ${restaurantName} and it is ${cusineType} cousine and ${numberServed} people served at the moment";
  }

  String describeRestaurantMongolian() {
    return "This Restaurant's name is ${restaurantName} and it is ${cusineType} cousine and ${numberServed} people served at the moment";
  }

  String describeRestaurantChinese() {
    return "This Restaurant's name is ${restaurantName} and it is ${cusineType} cousine and ${numberServed} people served at the moment";
  }

  String describeRestaurantCaucasian() {
    return "This Restaurant's name is ${restaurantName} and it is ${cusineType} cousine and ${numberServed} people served at the moment";
  }

  void setNumberServed(int numberServed) {
    this.numberServed = numberServed;
  }

  void incrementNumberServed() {
    numberServed++;
  }

  String openRestaurant() {
    if (isOpen) {
      return '${restaurantName} is Open ';
    } else {
      return '${restaurantName} is Closed ';
    }
  }
}

// Exercise 03
class User {
  String firstName;
  String lastName;
  int loginAttempts = 0;

  User(this.firstName, this.lastName);

  void incrementLoginAttempts() {
    loginAttempts++;
  }

  void resetLoginAttempts() {
    loginAttempts = 0;
  }

  String describeUser() {
    return "This user's first name is ${firstName} and lastname is ${lastName}";
  }

  String describeSusu() {
    return "This user's first name is ${firstName} and lastname is ${lastName}";
  }

  String greetUser() {
    return "Hi greetings From ${firstName}";
  }

  String greetSusu() {
    return "Hi greetings From ${firstName}";
  }
}

class Book {
  String title;
  String writer;
  int pageNum;

  void shortStory() {
    pageNum = 50;
  }

  Book(this.pageNum, this.title, this.writer);

  @override
  String toString() {
    return "Энэхүү номын нэр нь ${title} ба ${pageNum} хуудастай ${writer}-н бүтээл";
  }
}

class bankAccount {
  String accountNumber;
  double balance;
  bankAccount(this.accountNumber, this.balance);

  final Random random = Random();

  String createAccountNumber() {
    String nineDigits = '';
    for (int i = 0; i < 9; i++) {
      nineDigits += random.nextInt(10).toString();
    }
    int firstDigit = random.nextInt(9) + 1;
    return '$firstDigit$nineDigits';
  }

  String myBalance() {
    return "Яг одоо миний дансанд ${balance} төгрөг байна.";
  }

  void deposit(double depositAmount) {
    balance = balance + depositAmount;
  }

  void withdraw(double withdrawAmount) {
    balance = balance - withdrawAmount;
  }
}

class Student {
  String name;
  double gradeA;
  double gradeB;
  double gradeC;
  double avg = 0;

  Student(this.name,this.gradeA,this.gradeB,this.gradeC);

  void  averageGrade () {
    avg = (gradeC + gradeB + gradeA) / 3;
  }
}

class Square {
  double width;
  double height;
  double quadrat = 0;
  double square = 0;

  Square(this.height,this.width);

  void quadrats () {
    quadrat = (height + width) * quadrat;
  }

  void  squares () {
   square = height * width;
  }
}
