// dart class extension

void main() {
  Father Uuganbayar = Father('Uuganbayar', 53, 'IT', 'Black');
  print(Uuganbayar);
  Father Uvgunkhuu = Father('Uvgunkhuu', 68, 'Journalist', 'Brown');
  print(Uvgunkhuu);
  print(Uvgunkhuu.getInfo());
  print(Uuganbayar.getInfo());
  Child susu = Child('Susu', 25, 'IT Engineer', 'Black');
  print(susu);
  print(susu.canPlayFootball());
  print(susu.getInfo());
  Child Khangaikhuu = Child('Khangaikhuu', 43, 'SE', 'Brown');
  print(Khangaikhuu);
  print(Khangaikhuu.getInfo());
}

//Father
class Father {
  String name;
  int age;
  String occupation;
  String eyeColor;

  Father(this.name, this.age, this.occupation, this.eyeColor);

  String getInfo() {
    return 'Father ${name} is very lucky.';
  }

  @override
  String toString() {
    return 'Father ${name}, age = ${age}, works as ${occupation} and has ${eyeColor} eyes.';
  }
}

class Child extends Father {
  Child(super.name, super.age, super.occupation, super.eyeColor);

  bool canPlayFootball() {
    return true;
  }

 @override
  String toString() {

    return 'Child ${name}, age = ${age}, works as ${occupation} and has ${eyeColor} eyes.';
  }
}
