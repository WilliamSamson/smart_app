import 'dart:math';

class ImcCalculator {
  int Weight = 50;
  int Height = 160;
  int Age = 20;
  double BMI = 0.0;

  double calculaImc() {
    BMI = Weight / pow(Height / 100, 2);
    if (BMI != 0) {
      return BMI;
    } else {
      return 0;
    }
  }

  Male_interpretation() {
    if (BMI != 0) {
      if (BMI < 20) {
        return 'You are underweight try to eat more';
      } else if (BMI >= 20 && BMI <= 24.9) {
        return 'Excellent you  have a normal weight';
      } else if (BMI >= 25 && BMI <= 29.9) {
        return 'You are a little overweight try to exercise more';
      } else if (BMI >= 30 && BMI <= 39.9) {
        return 'You are overweight, kindly contact a nutritionist';
      } else if (BMI > 43) {
        return 'Your weight is far above normal, pls seek medical attention immediately';
      }
    }
  }

  Female_interpretation() {
    if (BMI != 0) {
      if (BMI < 20) {
        return 'You are underweight try to eat more';
      } else if (BMI >= 19 && BMI <= 23.9) {
        return 'Excellent you  have a normal weight';
      } else if (BMI >= 24 && BMI <= 28.9) {
        return 'You are a little overweight try to exercise more';
      } else if (BMI >= 23 && BMI <= 38.9) {
        return 'You are overweight, kindly contact a nutritionist';
      } else if (BMI > 39) {
        return 'Your weight is far above normal, pls seek medical attention immediately';
      }
    }
  }
}
