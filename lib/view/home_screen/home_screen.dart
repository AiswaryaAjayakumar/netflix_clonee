// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home_screen/widgets/custom_movie_card.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 40, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/logos_netflix-icon.png"),
                      Text(
                        "TV shows",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        "Movies",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),

                // 2nd
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        "TOP",
                        style: TextStyle(
                            fontSize: 8,
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "10",
                        style: TextStyle(
                            fontSize: 10,
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorConstants.mainWhite, width: 2)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "#2 in Nigeria Today",
                  style: TextStyle(
                      fontSize: 18,
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            //  3rd
            Row(
              mainAxisSize: MainAxisSize.min,
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
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorConstants.mainWhite,
                  ),
                  height: 30,
                  width: 72,
                  child: Row(
                    children: [Icon(Icons.play_arrow), Text("Play")],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: ColorConstants.mainWhite,
                    ),
                    Text(
                      "Info",
                      style: TextStyle(color: ColorConstants.mainWhite),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomMovieCard(
                imageList: ImageConstants.imageUrl1,
                height: 200,
                width: 120,
                isCircular: true,
                title: "Previews"),

            CustomMovieCard(
              isOptionVisible: true,
              imageList: ImageConstants.imageUrl1,
              title: "Continue watching for",
              height: 230,
              width: 120,
            ),
            CustomMovieCard(
              imageList: ImageConstants.imageUrl1,
              title: "Popular on Netflix",
              height: 230,
              width: 120,
            ),
            CustomMovieCard(
              imageList: ImageConstants.imageUrl1,
              title: "Trending Now",
              height: 230,
              width: 120,
            )
          ],
        ),
      ),
    );
  }
}
