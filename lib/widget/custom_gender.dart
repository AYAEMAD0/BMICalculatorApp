import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/color_app.dart';
import '../models/data_user_model.dart';

class CustomGender extends StatefulWidget {
  const CustomGender({super.key, required this.onSelected});

  final Function(Gender) onSelected;

  @override
  State<CustomGender> createState() => _CustomGenderState();
}

class _CustomGenderState extends State<CustomGender> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Choose Gender",
          style: TextStyle(
            color: ColorApp.color_grey,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Male
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                });
                widget.onSelected(Gender.male);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedGender == Gender.male
                        ? ColorApp.color_purW
                        : Colors.transparent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      child: SvgPicture.asset('assets/images/svgs/male.svg')),
                    const SizedBox(height: 10),
                    Text(
                      "Male",
                      style: TextStyle(
                        color: ColorApp.color_grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Female
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.female;
                });
                widget.onSelected(Gender.female);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedGender == Gender.female
                        ? ColorApp.color_purW
                        : Colors.transparent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      child: SvgPicture.asset('assets/images/svgs/female.svg')),
                    const SizedBox(height: 10),
                    Text(
                      "Female",
                      style: TextStyle(
                        color: ColorApp.color_grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
