enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy
}

void main() {
  const WeatherToday = Weather.sunny;

  switch(WeatherToday) {
    case Weather.sunny :
      print('Put on sunscreen');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella');
      break;
  }
}