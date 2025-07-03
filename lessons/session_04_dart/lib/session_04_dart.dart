// dart control flow

void main() {
  // making comparison
  // is door open? -> True or False
  // do pigs fly? -> False
  // bool -> 0/1 , true/false, yes,no

  const bool yes = true;
  const bool no = false;
  const bool studying = true;

  /*if (studying != false){
    print('Би сургуульд сурдаг');
  }else{
    print('Би ажилладаг');
  } */
  //examples
  // studying
  /*
  const bool isBig = false;
  print (isBig);
 */
  // testing equality ямар нэгэн утгууд хоорондоо адилхан байгааг шалгах

  const doesOneEqualTwo = (1 == 2);

  print(doesOneEqualTwo);

  //testing inequality

  const doesOneNotEqualTwo1 = (1 != 2);

  print(doesOneNotEqualTwo1);

  const alsoTrue = !(1 == 2);
  print(alsoTrue);

  // testing greater and less than
  const isOneGreaterThanTwo = (1 > 2);
  print(isOneGreaterThanTwo);

  const isOneLessThanTwo = (1 < 2);
  print(isOneLessThanTwo);

  // boolean logic
  // AND Operator
  const isSunny = true;
  const isFinished = true;

  const willGoCycling = isSunny && isFinished;
  print(willGoCycling); // True

  // AND Operator
  // false && false => false
  // false && true => false
  // true && false => false
  // True && true => true

  // OR Operator
  // false || false => false
  // false || true => true
  // true || false => true
  // true || true => true

  const willTravelToAustralia = true;

  const canFindPhoto = false;

  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;

  print(canDrawPlatypus); // true

  // Operator precedence

  const andTrue = 1 < 2 && 4 > 3; // true
  const andFalse = 1 < 2 && 3 > 4; // false
  const orTrue = 1 < 2 || 3 > 4; // true
  const orFalse = 1 == 2 || 3 == 4; //false
  print(3 > 4 && 1 < 2 || 1 < 4); // true

  // parenthese usage
  print(3 > 4 && (1 < 2 || 1 < 4)); // false
  print((3 > 4 && 1 < 2) || 1 < 4); // true

  //string equality

  const guess = 'dog';
  const guessEqualsCat = guess == 'cat';
  print(guessEqualsCat);

  //EX01

  const myAge = 25;
  const bool isTeenagerTrue = myAge < 19 && myAge > 13;
  print(isTeenagerTrue);

  const maryAge = 30;
  const bool bothTeenagers =
      maryAge < 19 && maryAge > 13 && myAge < 19 && myAge > 13;
  print(bothTeenagers);

  const reader = 'Susu';
  const ray = 'Ray Wenderlich';

  const bool rayIsReader = reader == ray;
  print(rayIsReader);


}
