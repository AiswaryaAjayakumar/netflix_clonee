// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class CustomComingSoon extends StatelessWidget {
  const CustomComingSoon(
      {super.key,
      required this.notificationImage,
      required this.title,
      required this.subtitle,
      this.des = ""});
  final String notificationImage;
  final String title;
  final String subtitle;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 300,
        decoration: BoxDecoration(
            //color: Colors.red,
            image: DecorationImage(
                image: NetworkImage(notificationImage), fit: BoxFit.cover)),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(
                  Icons.notifications,
                  color: ColorConstants.mainWhite,
                  size: 30,
                ),
                Text(
                  "Remind Me",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                  color: ColorConstants.mainWhite,
                  size: 30,
                ),
                Text(
                  "Share",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            subtitle,
            style: TextStyle(color: ColorConstants.mainWhite),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            des ?? "",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: ColorConstants.mainWhite,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Steamy",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                ". Soapy",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                ". Slow Burn",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                ". Suspenseful",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                ". Teen",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                ". Misterys",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ]),
      )
    ]);
  }
}
