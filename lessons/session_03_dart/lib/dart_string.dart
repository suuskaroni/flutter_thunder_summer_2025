void main() {
  const int myInteger = 10;
  const double myDouble = 34.5;
  print(myInteger);
  print(myDouble);

  final int myFinalInt = 45;
  print(myFinalInt);
  final double myFinalDouble = 44.5;
  print(myFinalDouble);

  // conversion between types
  int a = 45;
  double b = 34.5;
  a = 56.6.toInt();
  print(a);
  b = 24.toDouble();
  print(b);

  //String дээр хийх үйлдлүүд
  String greeting = 'Hello Dart';
  print(greeting);
  greeting = 'Hello Thunder';
  print(greeting);
  print(greeting.codeUnits);
  print(greeting.isEmpty);

  //boolean-type
  print(greeting.isNotEmpty);
  print(greeting.length);
  
  //string double,single quotation 
  print('This is Single Quot');
  print("This is Double Quot");
  print('I\'m Susu');

  //string concatenation буюу string хооронд нь нэмэх
  String head = 'Head String ';
  String tail = 'Tail String';
  print(head + tail);
  print('One' + ' ' + 'Cup');

  //string interpolation буюу хувьсагч оноох
  const name ='Susu';
  const introduction = 'Hello my name is $name';
  print(introduction);
  const oneThird = 1/3;
  const sentence = 'One third is $oneThird';
  print(sentence);
  print(oneThird.toStringAsFixed(2));
  final nextSentence = 'One third is ${oneThird.toStringAsFixed(2)}';
  print(nextSentence);

  //Multi-line string
  const multiLineString =
  '''
  This is Multi-Line string
  My name is 
  Susu
  ''';
  print(multiLineString);

  //new line string
  const newLine = 'This is \nnew line';
  print(newLine);
}

