// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/search_scrreen/widget/search_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 52,
              //width: 375,
              color: ColorConstants.mainGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: ColorConstants.mainWhite,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Search for a show, movie, genre, e.t.c",
                            style: TextStyle(
                                color: ColorConstants.mainWhite, fontSize: 15),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.mic,
                        color: ColorConstants.mainWhite,
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Top Searches",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: ImageConstants.serachImageUrl.length,
                  itemBuilder: (context, index) => SearchCard(
                        searchImage: ImageConstants.serachImageUrl[index]
                                ["image"]
                            .toString(),
                        title: ImageConstants.serachImageUrl[index]["title"]
                            .toString(),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
