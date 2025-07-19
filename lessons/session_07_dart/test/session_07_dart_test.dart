import 'dart:math';

import 'package:session_07_dart/exercise_01.dart';
import 'package:session_07_dart/exercise_02.dart';
import 'package:session_07_dart/exercise_03.dart';
import 'package:session_07_dart/exercise_04.dart';
import 'package:session_07_dart/exercise_07.dart';
import 'package:session_07_dart/exercise_08.dart';
import 'package:session_07_dart/session_07_dart.dart';
import 'package:test/test.dart';

void main() {
  test('add', () {
  expect(addTwoNumbers(), 11);
  expect(addNumbers(2, 3), 5);
  expect(calculateSqrt(2, 2), 2.0);
  expect(calculateCirleArea(5),78.53981633974483);
  expect(getLength('Susu'), 4);
  expect(convertTemperature(40, 'F'), 104.0);
  expect(currencyConversion(3580, 'MNT','USD'), 1);
  });
}
