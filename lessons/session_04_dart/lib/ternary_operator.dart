void main() {
  const score = 83;
  String message;
  if (score >= 60) {
    message = 'You passed';
  } else {
    message = 'You Failed.';
  }
  print(message);
  // ternary operator

  const messageTwo = (score >= 60) ? 'You passed' : 'You Failed.';
  print(message);

  //Ex01

  const myAge = 111;

  /* if (myAge >= 0 && myAge <= 13) {
    print('You are a baby');
  } else if (myAge >= 13 && myAge <= 19) {
    print('You are a teenager');
  } else if (myAge >= 19 && myAge <= 65) {
    print('You are an adult');
  } else if (myAge >= 65 && myAge <= 99) {
    print('You are a senior');
  } else if (myAge >= 90) {
    print('You are a dinosaur');
  }
 */
  //Ex02
  const checkMyAgeLevel = (0 <= myAge && myAge <= 13)
  ? 'You are a baby'
  : (13 < myAge && myAge < 19)
  ? 'you are teenager'
  : (19 < myAge && myAge <= 65)
  ? 'you are an adult'
  : (65 < myAge && myAge <= 99)
  ? 'you are a senior'
  : 'you are a dinosaur';
  print(checkMyAgeLevel);
}
