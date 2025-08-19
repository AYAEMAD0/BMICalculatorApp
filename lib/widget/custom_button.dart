import 'package:bmi/core/color_app.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text,required this.onpress});
    final String text;
    final void Function() onpress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      style: ElevatedButton.styleFrom(
       backgroundColor: ColorApp.color_purD,
       minimumSize: Size(370, 45),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      ),
       child: Text(text,style: TextStyle(
        color: ColorApp.color_white,
        fontSize: 18,fontWeight: FontWeight.w600),));
  }
}



