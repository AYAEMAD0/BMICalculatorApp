import 'package:bmi/core/color_app.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labal,
    required this.controller,
    required this.valid,
    this.onpress,
    this.isDate = false,
    this.isIcon = false,
  });

  final String labal;
  final TextEditingController controller;
  final String? Function(String?) valid;
  final Function()? onpress;
  final bool isDate;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labal,
          style: TextStyle(
            color: ColorApp.color_grey,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          keyboardType: isIcon ? TextInputType.number : TextInputType.text,
          validator: valid,
          readOnly: isDate,
          onTap: onpress,
          textAlign: isIcon ? TextAlign.center : TextAlign.start,
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorApp.color_purW.withOpacity(0.30),
            prefixIcon: isIcon
                ? InkWell(
                    onTap: () {
                      if (controller.text.isNotEmpty) {
                        double value = double.tryParse(controller.text) ?? 0;
                        if (value > 0) {
                          value--;
                          controller.text = value.toString();
                        }
                      }
                    },
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  )
                : null,
            suffixIcon: isIcon
                ? InkWell(
                    onTap: () {
                      if (controller.text.isNotEmpty) {
                        double value = double.tryParse(controller.text) ?? 0;
                        value++;
                        controller.text = value.toString();
                      }
                    },
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  )
                : null,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: ColorApp.color_grey.withOpacity(0.10),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: ColorApp.color_grey.withOpacity(0.10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: ColorApp.color_grey.withOpacity(0.10),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
