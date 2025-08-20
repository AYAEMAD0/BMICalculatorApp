import 'package:bmi/core/color_app.dart';
import 'package:bmi/models/data_user_model.dart';
import 'package:bmi/screens/home_screen/home_screen.dart';
import 'package:bmi/widget/custom_button.dart';
import 'package:bmi/widget/custom_container_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.model});
  final DataUserModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomContainerInfo(model: model),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                //height: 200,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: ColorApp.color_secondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(
                              'Under Weight',
                              style: TextStyle(
                                  color: ColorApp.color_white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8,),
                              Text(
                              'Your BMI is less than 18.5',
                              style: TextStyle(
                                  color: ColorApp.color_white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 8,),
                              Text(
                              'Lorem ipsum dolor sit amet consectetur. Sagittis interdum dui enim imperdiet sapien cursus velit pharetra. Viverra justo tempor dictum odio. Nisl non dui integer orci nulla eget laoreet tellus. Orci nunc a orci convallis ac orci. Urna auctor at elementum sit ante maecenas ullamcorper rhoncus dictum. Morbi venenatis lectus ultrices euismod. Laoreet purus risus amet enim sagittis ut. Consectetur libero orci urnager dignissi est.',
                              style: TextStyle(
                                  color: ColorApp.color_white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            
                ],),
              ),

              SizedBox(height: 20,),
              CustomButton(text: 'Calculate BMI Again', onpress: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) =>HomeScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
