
import 'package:bmi/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}