// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/splash_screen/splash_screens.dart';
import 'package:netflix_clone/view/user_name_screen/user_name_screen.dart';
//import 'package:netflix_clone/view/home_screen/home_screen.dart';
//import 'package:netflix_clone/view/user_name_screen/splash/splash_screen.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
