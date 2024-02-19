// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key, required this.title, required this.searchImage});
  final String title;
  final String searchImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        color: Color(0xff424242),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 76,
              width: 150,
              //  color: Colors.amber,
              child: Image(
                image: NetworkImage(searchImage),
                fit: BoxFit.cover,
              ),
            ),
            Text(title),
            Container(
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  size: 20,
                  color: ColorConstants.mainWhite,
                ),
              ),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: ColorConstants.mainWhite, width: 2.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
