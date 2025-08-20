import 'package:bmi/models/data_user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../core/color_app.dart';

class CustomContainerInfo extends StatelessWidget {
  const CustomContainerInfo({super.key,required this.model});
  final DataUserModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorApp.color_secondary),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
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
                            alignment: Alignment.topLeft,
                            child: Text(
                              'A ${model.age} years old ${model.gender.name}.',
                              style: TextStyle(
                                  color: ColorApp.color_white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '16.5', ///calcualator??
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorApp.color_white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'BMI Calc',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorApp.color_white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
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
                                    height: 6,
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
                              SizedBox(width: 10,),
                              SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  color: ColorApp.color_divider,
                                  thickness: 2,
                                ),
                              ),
                              SizedBox(width: 10,),
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