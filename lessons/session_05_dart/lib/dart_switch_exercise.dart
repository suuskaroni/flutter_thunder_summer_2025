/**
 *  Weather гэдэг constant хувьсагч зарлаад
 *  cloudy гэдэг утга онооно уу
 *  тэгээд
 *  switch ашиглан
 *  хэрвээ weather sunny байвал түүнийг 'Put on sunscreen'
 *  хэрвээ weather snowy байвал түүнийг 'Get your skis.'
 *  хэрвээ weather cloudy,rainy байвал түүнийг 'Bring on umbrealla'
 *  бусад үед нь I'm not familiar with that weather
 *  гэж хэвлэдэг болгоорой.
 */

void main () {

  const weather = 'rainy';


  switch (weather){
    case 'Sunny' :
      print('Put on sunscreen');
      break;
    case 'Snowy':
      print('Get your skis');
      break;
    case 'Cloudy' :
    case 'rainy' :
      print('Bring on Umbrella');
      break;
    default:
      print('I am not familiar with that weather');


  }

}