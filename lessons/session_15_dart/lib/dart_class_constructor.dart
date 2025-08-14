void main() {
  User user1 = User(0, 'Susu');
  print(user1.name);
  print(user1.id);

  User user2 = User(1, 'Khangaikhuu');
  print(user2.id);
  print(user2.name);

  Animal dog = Animal('Banhar', 'Dog', 3);
  print(dog);
}

class User {
  int id;
  String name;

  User(this.id, this.name);
}

class Animal {
  String name;
  String race;
  int age;

  Animal(this.name, this.race, this.age); // constructor байгуулагч функц

  //toString функцыг дарж бичих
  @override
  String toString() {
    return 'Animal is ${name}, race of ${race} and is ${age} years old.';
  }
}
