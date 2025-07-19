void main() {
  helloWorld();

  String returnValue = helloWorld();
  print(returnValue);

  double piValue = giveMePi();
  print(piValue);

  int numberValues = addTwoNumbers();
  print(numberValues);

  print(multiplyTwoNumbers(6,7));
  print(multiplyTwoNumbers(8,10));
  print(multiplyTwoNumbers(-1,4));
  print(compliment(15));
  helloPersonAndPet('Susu', 'Dog');
  print(fullname('Susu', 'Hehe'));
  print(withinTolerance(24, 20, 40));
  print(withTolerance(10));
  print(withTolerance(10, max: 100, min: 50,));
  print(Hasah(8, 5));
  print(Huvaah(8, 4));
}



// named Parameter
bool withTolerance (int value, {int min = 0, int max = 10}){
  return min <= value && value <= max;
}

bool withinTolerance (int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

//Optional Parameter
String fullname(String first, String last, [String? title]) {
  if(title != null) {
    return '$title $first $last';
  }else {
    return '$first $last';
  }
}


//return type-гүй функц буюу void
void helloPersonAndPet(String person, String pet){
  print('Hello $person, and your furry friend, $pet!');
}
//parameter-тэй функц
String compliment (int number) {
  return '$number is nice number';
}

int multiplyTwoNumbers (int a, int b){
  // int a = 6;
  // int b = 7;
  return a * b;
}


int addTwoNumbers () {
  int a = 5;
  int b = 6;
  return a+b;
}

// Function definition
String helloWorld () {
  return 'Hello World';
}

double giveMePi() {
  return 3.14;
}

int add (int a , int b) {
  return a + b;
}

//arrow function
int addOther (int a, int b) => a + b;

//Hasah function

int Hasah (int a, int b) => a - b;

//Huvaah function

double Huvaah (double a ,double b) => a / b;

