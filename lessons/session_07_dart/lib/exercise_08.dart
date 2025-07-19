double currencyConversion (int shirheg,String currentCurrency,String targetCurrency) {
  if(currentCurrency == 'MNT' && targetCurrency == 'USD'){
    return  shirheg / 3580;
  }else if(currentCurrency == 'USD' && targetCurrency =='MNT') {
    return shirheg * 3580;
  }else{
    return 0;
  }
}