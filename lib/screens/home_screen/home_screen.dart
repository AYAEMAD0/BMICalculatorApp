import 'package:bmi/core/color_app.dart';
import 'package:bmi/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI',
          style: TextStyle(
              color: ColorApp.color_greenB.withOpacity(0.90),
              fontWeight: FontWeight.w700,
              fontSize: 40,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          CustomTextField(labal: 'Name',),
        ],),
      ),
    );
  }
}