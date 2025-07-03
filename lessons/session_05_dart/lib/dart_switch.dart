// dart switch

import 'dart:vmservice_io';

void main() {
  // switch statements
  /**
   * switch (variable) {
   *    case value1;
   *        // code
   *        break;
   *     case value2;
   *          //code
   *          break;
   */

  const number = 3;
  if (number == 0) {
    print('Zero');
  } else if (number == 1) {
    print('One');
  } else if (number == 2) {
    print('Two');
  } else if (number == 3) {
    print('Three ');
  } else if (number == 4) {
    print('Four');
  }else{
    print('Hehe');
  }

  // convert it into switch

  switch(number){
    case 0 :
      print('Zero');
      break;
    case 1 :
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    case 4:
      print('Four');
      break;
    default:
      print('Something else');
  }
}
