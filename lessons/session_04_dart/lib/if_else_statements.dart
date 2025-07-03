void main () {
  // if statement else if
  const int  myAge = 25;
  if (2 > 1 ) {
    print("Yes It is True");
  }
  // Ex 01
  if (myAge <= 13 && myAge <= 19) {
    print('');
  }
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog'){
    print('Animal is a house pet');
  }else {
    print('Animal is not a house pet');
  }

  // else if chains
  const trafficLight = 'Green';
  var command = '';
  if(trafficLight == 'red')
  {
    command = 'Stop';
  }else if(trafficLight == 'Yellow'){
    command ='Slow Down';
  }else if(trafficLight == 'Green'){
    command = 'Go';
  }else{
    command = 'Invalid';
  }
  print(command);
}