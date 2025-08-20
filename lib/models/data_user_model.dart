import 'package:age_calculator/age_calculator.dart';

class DataUserModel {
  final String name;
  final DateTime birthDay;
  final int height;
  final int weight;
  final Gender gender;

  DataUserModel({
    required this.name,
    required this.birthDay,
    required this.height,
    required this.weight,
    required this.gender,
  });
  int get age => AgeCalculator.age(birthDay).years;

}
enum Gender {
  male,
  female,
}