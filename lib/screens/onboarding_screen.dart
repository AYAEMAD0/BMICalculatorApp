import 'package:bmi/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/color_app.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.color_primary,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SvgPicture.asset(
              'assets/images/svgs/onboarding.svg',
              width: 300,
              height: 250,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorApp.color_secondary),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Know Your Body Better , \nGet Your BMI Score in Less \nThan a Minute!",
                        style: TextStyle(
                            color: ColorApp.color_white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'It takes just 30 seconds – and your health is \nworth it!',
                        style: TextStyle(
                            color: ColorApp.color_white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: ColorApp.color_divider,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
