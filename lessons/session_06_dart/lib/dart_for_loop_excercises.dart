import 'dart:io';
void main () {
  // User-s duriin too avaad ter hurtelh buh tegsh toog hevleh
/*  print('Enter some number:');
  var input = stdin.readLineSync();
  print (input is String);
  int numberInput = int.parse(input!);

  for (int b = 0; b < numberInput; b = b + 2 ){
    print('Even numbers are : \n${b}');
  }
*/
  //Exercise 02
  // 1-ээс 10 хүртэлх тоо авна.
  // Тухайн өгсөн тооны хүрдийг нь хэвлэдэг болго.
  print('Ямар тооны үржвэрийг олох вэ хө : ');
  var multiplierInput = stdin.readLineSync();
  print(multiplierInput is String);
  int multiplyInput = int.parse(multiplierInput!);
  for (int c = 1; c <= 10; c++ ){
    if(multiplyInput <= 10 || multiplyInput < 0) {
      print('Энэ тооны хүрд нь : ${multiplyInput} * ${c}  = ${c * multiplyInput }');
    }else{
      print('Zuv too oruulaa ho');
      break;
    }
  }

}