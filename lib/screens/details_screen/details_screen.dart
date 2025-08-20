import 'package:bmi/core/color_app.dart';
import 'package:bmi/data/api_service.dart';
import 'package:bmi/data/bmi_response.dart';
import 'package:bmi/models/data_user_model.dart';
import 'package:bmi/screens/home_screen/home_screen.dart';
import 'package:bmi/widget/custom_button.dart';
import 'package:bmi/widget/custom_container_info.dart';
import 'package:bmi/widget/custom_container_recommendation.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.model});
  final DataUserModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<BmiResponse>(
          future: ApiService().calculateBmi(
            height: model.height,
            weight: model.weight,
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child:
                    CircularProgressIndicator(color: ColorApp.color_secondary),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  "Error: ${snapshot.error}",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: ColorApp.color_secondary,
                  ),
                ),
              );
            } else if (!snapshot.hasData || snapshot.data == null) {
              return const Center(child: Text("No Data"));
            }
            final resultBMI = snapshot.data!;

            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      //first container
                      CustomContainerInfo(
                        model: model,
                        response: resultBMI,
                      ),
                      const SizedBox(height: 20),
                      //second container
                      CustomContainerRecommendation(
                        response: resultBMI,
                      ),
                      const SizedBox(height: 20),
                      //button
                      CustomButton(
                        text: 'Calculate BMI Again',
                        onpress: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
