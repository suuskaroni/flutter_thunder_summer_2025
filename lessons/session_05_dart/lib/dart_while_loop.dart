//while loop
void main() {
  // Problem
  // 1-ээс 10 хүртэлх тоог хэвлэж харуулна уу?
  var sum = 1;
  while (sum < 10) {
    sum = sum + 4;
    /*print(sum); */
  }
  int too = 0;
  while (too <= 10) {
    /*print(too); */
    too++;
  }
  int too1 = 0;
  while (too1 <= 100) {
    if (too1 % 2 == 0) {
      /*  print(too1); */
    }
    too1++;
  }

  /* int too2 = 1;
  while (too2 <= 30){
    if(too2 % 3 == 0){
      print('3-n hurd iz $too2');
    }
    too2++;
  } */

  int nemegdehtoo = 1;
  while (nemegdehtoo <= 10) {
    print('$nemegdehtoo x 3 = ${nemegdehtoo * 3}');
    nemegdehtoo++;
  }
  // do while
  // do {
  // /// code
  // } while(condition)

  var summ = 1;
  do {
    summ += 4;
    print(summ);
  } while (summ < 10);

  var test1 = (1 + 3 - 2 * 4 + 8);

  while (test1 < 10){
    test1 += (1 + 3 - 2 * 4 +8);
  }
  print('while loop sum $test1');

  var test2 = 0;

  do {
    test2 += (1 + 3 - 2 * 4 + 8);
  }while(test2 < 10);
  print('do while sum is $test2');
  // breaking out of loop

  var test3 = 1;
  while(true){
    test3 += 4;
    if (test3 > 10){
      print(test3);
      break;
    }
  }

  int counter = 0;

  while (counter < 10){
    print('Counter is ${counter + 1}');
    counter++;
  }
}
