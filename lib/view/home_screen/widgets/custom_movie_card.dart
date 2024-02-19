// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class CustomMovieCard extends StatelessWidget {
  const CustomMovieCard(
      {super.key,
      required this.title,
      this.height = 200,
      this.width = 100,
      this.isCircular = false,
      required this.imageList,
      this.isOptionVisible = false});
  final String title;
  final double height;
  final double width;
  final bool isCircular;
  final List<String> imageList;
  final bool isOptionVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: height,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    shape: isCircular == true
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                    // color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(imageList[index]),
                        fit: BoxFit.cover),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Visibility(
                    visible: isOptionVisible,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: width,
                          height: 5,
                          color: Colors.grey,
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 5,
                            width: 40,
                            color: ColorConstants.mainRed,
                          ),
                        ),
                        Container(
                          height: 30,
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: ColorConstants.mainWhite,
                                ),
                                Spacer(),
                                Icon(
                                  Icons.more_vert,
                                  color: ColorConstants.mainWhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
