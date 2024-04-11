// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class CustomNewArrivals extends StatelessWidget {
  const CustomNewArrivals(
      {super.key, required this.arrivalImg, required this.index});

  final List arrivalImg;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.mainGrey,
      child: Row(
        children: [
          Container(
            height: 90,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Image(
                image: NetworkImage(arrivalImg[index]["image"]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                arrivalImg[index]["title"],
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 18),
              ),
              Text(
                arrivalImg[index]["name"],
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 18),
              ),
              Text(
                arrivalImg[index]["date"],
                style: TextStyle(
                    color: Color.fromARGB(
                      255,
                      208,
                      202,
                      202,
                    ),
                    fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
