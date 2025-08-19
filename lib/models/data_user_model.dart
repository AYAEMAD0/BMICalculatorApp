class DataUserModel {
  final String name;
  final String birthDay;
  final double height;
  final double weight;
  final Gender gender;

  DataUserModel({
    required this.name,
    required this.birthDay,
    required this.height,
    required this.weight,
    required this.gender,
  });
}
enum Gender {
  male,
  female,
}