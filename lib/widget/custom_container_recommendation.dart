import 'package:bmi/data/bmi_response.dart';
import 'package:flutter/material.dart';
import '../core/color_app.dart';

class CustomContainerRecommendation extends StatelessWidget {
  const CustomContainerRecommendation({super.key, required this.response});
  final BmiResponse response;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorApp.color_secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            response.risk,
            style: TextStyle(
                color: ColorApp.color_white,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            response.summary,
            style: TextStyle(
                color: ColorApp.color_white,
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            response.recommendation,
            style: TextStyle(
                color: ColorApp.color_white,
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
