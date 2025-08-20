import 'package:bmi/core/color_app.dart';
import 'package:bmi/models/data_user_model.dart';
import 'package:bmi/screens/details_screen/details_screen.dart';
import 'package:bmi/widget/custom_button.dart';
import 'package:bmi/widget/custom_gender.dart';
import 'package:bmi/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController birthDayController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey();

  Gender selected = Gender.male; 
  DateTime? selectedBirthDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,//doesnot change color appbar in scroll
        title: Text(
          'BMI',
          style: TextStyle(
            color: ColorApp.color_greenB.withOpacity(0.90),
            fontWeight: FontWeight.w700,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _key,
            child: Column(
              children: [
                // Name
                CustomTextField(
                  labal: 'Name',
                  controller: nameController,
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    if (value.length < 3) {
                      return "Name must be at least 3 characters";
                    }
                    return null;
                  },
                ),

                // Birth
                CustomTextField(
                  labal: 'Birth Date',
                  controller: birthDayController,
                  onpress: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2000),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        selectedBirthDate = pickedDate;
                        birthDayController.text =
                            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                      });
                    }
                  },
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please select birth date";
                    }
                    return null;
                  },
                ),

                // Gender
                CustomGender(
                  onSelected: (val) {
                    selected = val;
                  },
                ),

                const SizedBox(height: 20),

                // Height
                CustomTextField(
                  labal: 'Your Height (cm)',
                  controller: heightController,
                  isIcon: true,
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your height";
                    }
                    final h = double.tryParse(value);
                    if (h == null || h <= 0) {
                      return "Height must be a positive number";
                    }
                    return null;
                  },
                ),

                // Weight
                CustomTextField(
                  labal: 'Your Weight (kg)',
                  controller: weightController,
                  isIcon: true,
                  valid: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your weight";
                    }
                    final w = double.tryParse(value);
                    if (w == null || w <= 0) {
                      return "Weight must be a positive number";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                // Button
                CustomButton(
                  text: 'Calculate BMI',
                  onpress: () {
                    if (_key.currentState!.validate()) {
                      var infoPerson = DataUserModel(
                        name: nameController.text,
                        birthDay: selectedBirthDate!,
                        height: double.parse(heightController.text),
                        weight: double.parse(weightController.text),
                        gender: selected,
                      );

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(model: infoPerson),
                        ),
                      );

                      print('--------------------------------------');
                      print('gender $selected');
                      print('name ${nameController.text}');
                      print('birth ${birthDayController.text}');
                      print('birth ${selectedBirthDate!}');
                      print('height ${heightController.text}');
                      print('weight ${weightController.text}');
                    }
                  },
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
