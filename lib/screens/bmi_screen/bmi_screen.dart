
import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}