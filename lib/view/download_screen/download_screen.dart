// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Smart Downloads",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Introducing Downloads For You",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                  maxLines: 3,
                  // overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      // fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: ColorConstants.mainGrey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: Text(
                    "SETUP",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: ColorConstants.mainWhite),
                  ),
                ),
                height: 50,
                width: 353,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color.fromARGB(255, 46, 106, 244),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  child: Center(
                    child: Text(
                      "Find Somethig to Download",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: ColorConstants.mainWhite),
                    ),
                  ),
                  height: 40,
                  width: 257,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: ColorConstants.mainGrey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
