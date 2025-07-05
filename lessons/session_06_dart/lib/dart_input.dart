import 'dart:io';
void main() {
  // dart input
  print('Enter a number :');
  var input = stdin.readLineSync();
  print(input);
  print(input is String);
  int numberInput = int.parse(input!);
  int counter = 0;
  while (counter < numberInput ){
    print(counter);
    counter++;
  }
}