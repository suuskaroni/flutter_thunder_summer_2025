import 'package:session_07_dart/exercise_05.dart';
import 'package:session_07_dart/exercise_06.dart';

double convertTemperature(double temprature,String type,){
  if (type == 'F'){
    return celciusToFahrenheit(temprature);
  }else if(type == 'C'){
    return fahrenheitToCelcius(temprature);
  }else{
    return 0;
  }
}