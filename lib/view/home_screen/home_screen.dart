// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants.dart';
//import 'package:netflix_december/utils/color_constants/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Rectangle 26.png"),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 5,
                // right: 5,
                // left: 5,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/logos_netflix-icon.png"),
                    Text(
                      "TV shows",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "movies",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              // 2nd
            ],
          ),

          //  3rd
          Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: ColorConstants.mainWhite,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  )
                ],
              ),
              Container(
                color: ColorConstants.mainWhite,
                child: Icon(Icons.play_arrow),
              )
            ],
          )
        ],
      ),
    );
  }
}
