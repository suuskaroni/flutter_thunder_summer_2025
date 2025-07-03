void main() {
  // challenge 1
  const firstName = 'Ray';
  String lastName ='';
  if ( firstName == 'Bob'){
    lastName='Smith';
  }else if (firstName =='Ray'){
    lastName = 'Wenderlich';
  }
  final fullName = 'Your full name is ${firstName + ' ' + lastName}';
  print(fullName);

  //challenge 2
  //const bool true = true;
  if((true && 1 != 2) || (4 < 3 && 100 < 1))
    {
      print('true');
    }else{
    print('False');
  }
  if(((10 / 2 ) > 3) && (10 % 2) == 0){
    print('yes');
  }else{
    print('uguie');
  }

  const AudioStateHehe = AudioState.stopped;

  switch (AudioStateHehe){
    case AudioState.playing:
      print('Hugjim yvj bnaa ho');
      break;
    case AudioState.pause:
      print('Zogsson bnaa ho');
      break;
    case AudioState.stopped:
      print('Duu yvj bgamu?');
      break;
  }
}


enum AudioState{
  playing,
  pause,
  stopped
}