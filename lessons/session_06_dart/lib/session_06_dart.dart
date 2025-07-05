//Recapture

//enum

enum Naadam { Archer, wrestling, horseRacing }

void main() {
  // shineer huvisagch todorhoilj ehleed Naadam turultei
  // utga onoono uu

  const naadmiinturul = Naadam.wrestling;

  switch (naadmiinturul) {
    case Naadam.Archer:
      print('Одоо ${Naadam.Archer} -н тэмцээн');
      break;
    case Naadam.wrestling:
      print('Бөхийн барилдаан');
      break;
    case Naadam.horseRacing:
      print('Мори уралдах');
      break;
  }

  int hehe = 0;

  while (hehe <= 10) {
    print('5 x ${hehe} = ${hehe * 5} ');
    hehe++;
  }
}
