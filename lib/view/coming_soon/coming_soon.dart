// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/coming_soon/widgets/custom_coming_soon.dart';
import 'package:netflix_clone/view/coming_soon/widgets/custom_new_arrivals.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.notifications,
                color: ColorConstants.mainWhite,
              ),
              radius: 15,
              backgroundColor: ColorConstants.mainRed,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Notifictions",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //height: 250,
                color:ColorConstants.mainGrey,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ImageConstants.arrivalUrl.length,
                  itemBuilder: (context, index) => CustomNewArrivals(
                    arrivalImg: ImageConstants.arrivalUrl,
                    index: index,
                  ),
                ),
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(vertical: 30),
                itemCount: ImageConstants.notificationMovieList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CustomComingSoon(
                  notificationImage: ImageConstants.notificationMovieList[index]
                      ["imageUrl"],
                  title: ImageConstants.notificationMovieList[index]["title"],
                  subtitle: ImageConstants.notificationMovieList[index]
                      ["subtitle"],
                  des: ImageConstants.notificationMovieList[index]
                      ["description"],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
