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
  GlobalKey<FormState> _key = GlobalKey();
  late Gender selected=Gender.male;
  late DataUserModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                CustomTextField(labal: 'Name', controller: nameController),
                CustomTextField(
                    labal: 'Birth Date', controller: birthDayController),
                CustomGender(
                  onSelected: (val) {
                    selected = val;
                  },
                ),
                SizedBox(height: 20,),
                CustomTextField(
                    labal: 'Your Height(Cm)', controller: heightController),
                CustomTextField(
                    labal: 'Your Weight(kg)', controller: weightController),
                CustomButton(
                  text: 'Calculate BMI',
                  onpress: () {
                    if (_key.currentState!.validate()) {
                      var infoPerson = DataUserModel(
                          name: nameController.text,
                          birthDay: birthDayController.text,
                          height: double.parse(heightController.text),
                          weight: double.parse(weightController.text),
                          gender: model.gender);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(model: infoPerson)));
                    }
                    print('--------------------------------------');
                    print('gender $selected');
                    print('name ${nameController.text}');
                    print('birth ${birthDayController.text}');
                    print('height ${heightController.text}');
                    print('weight ${weightController.text}');
                  },
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
