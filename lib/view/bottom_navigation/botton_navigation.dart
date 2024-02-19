// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/coming_soon/coming_soon.dart';
import 'package:netflix_clone/view/download_screen/download_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/more_screen/more_screen.dart';
import 'package:netflix_clone/view/search_scrreen/search_screen.dart';
// import 'package:netflix_december/utils/color_constants/color_constants.dart';
// import 'package:netflix_december/view/coming_soonpage/coming_soonpage.dart';
// import 'package:netflix_december/view/downloads/downloads_page.dart';
// import 'package:netflix_december/view/home_screen/home_screen.dart';
// import 'package:netflix_december/view/more_page/more_page.dart';
// import 'package:netflix_december/view/search_screen/search_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List pages = [
    HomeScreen(),
    SearchScreen(),
    ComingSoon(),
    DownloadScreen(),
    MoreScreen(),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstants.mainBlack,
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstants.mainRed,
          unselectedItemColor: ColorConstants.mainWhite,
          selectedFontSize: 8.5,
          unselectedFontSize: 8,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: "coming soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "more"),
          ]),
    );
  }
}
