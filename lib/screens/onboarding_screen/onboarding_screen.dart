import 'package:bmi/screens/home_screen/home_screen.dart';
import 'package:bmi/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/color_app.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.color_primary,
      body: SafeArea(
        child: Stack(
          children: [
            //container end text and button
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorApp.color_secondary),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        "Know Your Body Better , \nGet Your BMI Score in Less Than a Minute!",
                        style: TextStyle(
                            color: ColorApp.color_white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'It takes just 30 seconds – and your health is worth it!',
                        style: TextStyle(
                            color: ColorApp.color_white.withOpacity(0.60),
                            fontSize: 18,
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
                        height: 20,
                      ),
                      CustomButton(
                        text: 'Get Start',
                        onpress: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Scale for measuring weight
            Positioned(
              top:65,
              left: 0,
              right: 0,
                child: SvgPicture.asset('assets/images/svgs/onboarding1.svg',height: 205,)),

            // fruits and vegatables
            Positioned(
                top:190,
                right: 30,
                child: SvgPicture.asset('assets/images/svgs/onboarding3.svg',height: 185,)),

            //man
            Positioned(
              top:137,
              left: 30,
                child: SvgPicture.asset('assets/images/svgs/onboarding2.svg',height: 230,)),

    //line in top
    Positioned(
              top:65,
              left: 30,
                child: SvgPicture.asset('assets/images/svgs/line_up.svg',height: 60,)),

    //line bottom
    Positioned(
              top:330,
              right:23,
                child: SvgPicture.asset('assets/images/svgs/line_under.svg',height: 50,)),




          ],
        ),
      ),
    );
  }
}


