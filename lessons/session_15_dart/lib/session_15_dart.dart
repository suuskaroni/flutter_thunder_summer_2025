//dart class
void main() {
  int legs = 2;
  int eyes = 2;
  int body = 1;
  String name = 'Susu';
  Human susu = Human(); // object
  print(susu);
  Human khangai = Human(); // object
  print(khangai);
  khangai.name = 'Khangaikhuu';
  print(khangai.name);

  print(susu.body);
}


//Blue Print
class Human {
  int legs = 2;
  int eyes = 2;
  int body = 1;
  String name = 'Susu';
}