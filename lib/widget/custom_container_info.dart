import 'package:bmi/data/bmi_response.dart';
import 'package:bmi/models/data_user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../core/color_app.dart';

class CustomContainerInfo extends StatelessWidget {
  const CustomContainerInfo({super.key, required this.model, required this.response});
  final DataUserModel model;
  final BmiResponse response;
  @override
  Widget build(BuildContext context) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorApp.color_secondary),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              model.name,
                              style: TextStyle(
                                  color: ColorApp.color_white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'A ${model.age} years old ${model.gender.name}.',
                              style: TextStyle(
                                  color: ColorApp.color_white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${response.bmi.toStringAsFixed(2)}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorApp.color_white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'BMI Calc',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorApp.color_white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '${model.height} cm',
                                    style: TextStyle(
                                        color: ColorApp.color_white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Height',
                                    style: TextStyle(
                                        color: ColorApp.color_white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  color: ColorApp.color_divider,
                                  thickness: 2,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '${model.weight} kg',
                                    style: TextStyle(
                                        color: ColorApp.color_white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Weight',
                                    style: TextStyle(
                                        color: ColorApp.color_white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/images/svgs/body.svg')
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          );
  }
}
