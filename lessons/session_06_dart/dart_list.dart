// Dart List
void main() {
  //problem
  var a = 1;
  var b = 2;
  // solution
  //container
  List<int> integerNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> greetings = ['Hi', 'Hello', 'Ciao', 'Ni hao'];
  List<double> doubleNumbers = [4.5, 5.6, 8.7, 10.6];
  List<bool> booleanNumbers = [true, false, true, true, false];

  List<String> sweets = ['Ice cream', 'Cake', 'Candies', 'Soda','Lollipop'];

  print(sweets);

  //accessing elements

  print(sweets[0]);
  print(sweets.length);
  int counter = 0;
  while (counter < sweets.length){
    print(sweets[counter]);
    counter++;
  }

  for (int i =0; i < sweets.length; i++){
    print(sweets[i]);
  }
  
  //adding item to the list
  
  sweets.add('Nogootoi chiher');
  sweets.add('Vegan Lollipop');
  print(sweets);
}
