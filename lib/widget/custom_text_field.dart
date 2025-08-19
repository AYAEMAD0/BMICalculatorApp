import 'package:flutter/material.dart';
import '../core/color_app.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labal,required this.controller});
  final String labal;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labal,style: TextStyle(
            color: ColorApp.color_grey,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),),
        SizedBox(height:10 ,),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorApp.color_purW.withOpacity(0.30),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorApp.color_grey.withOpacity(0.10)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorApp.color_grey.withOpacity(0.10)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorApp.color_grey.withOpacity(0.10)),
            ),
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}