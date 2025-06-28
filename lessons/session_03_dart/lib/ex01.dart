void main () {
  
  //EX01-02
  int myAge = 25;
  int fAge = 22;
  double averageAge;
  averageAge = (myAge + fAge) / 2 ;
  print("Average age is $averageAge");
  //EX01-02
  
  //EX03
  int testNumber = 23;
  int eoNumber = testNumber % 2;
  int evenOdd = eoNumber;
  
  print(evenOdd);
  //EX03

  //EX04
  int dogs = 0;
  dogs = dogs + 1;
  print('I have $dogs dog');
  //EX04

  //EX05
  int age = 16;
  print(age);
  int ageO = 30;
  print(ageO);
  //EX05

  //EX06
  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 100);

  print('''
 Answer1 is $answer1
 Answer2 is $answer2
 Answer3 is $answer3 
  ''');
  //EX06

  //EX07

  const double rating1 = 24.1;
  const double rating2 = 33.3;
  const double rating3 = 65.5;
  const double totalRate = (rating1 + rating2 + rating3) / 3;
  print(totalRate);

  //EX07
}
