// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
// import 'package:netflix_clone/utils/image_constants.dart';
// import 'package:netflix_clone/utils/profile_images.dart';
// import 'package:netflix_clone/view/bottom_navigation/botton_navigation.dart';

class GlobalUserNameScreen extends StatelessWidget {
  const GlobalUserNameScreen(
      {super.key,
      this.height = 100,
      this.width = 100,
      required this.name,
      required this.imgUrl});
  final double height;
  final double width;
  final String name;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
            color: Colors.amber,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(color: ColorConstants.mainWhite),
        )
      ],
    );
  }
}
