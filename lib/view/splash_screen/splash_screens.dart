// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/bottom_navigation/botton_navigation.dart';
//import 'package:netflix/utilis/color%20constant/color_constant.dart';
// import 'package:netflix/view/user%20name/user_namescreen.dart';
// import 'package:netflix_clone/utils/constants.dart';
// import 'package:netflix_clone/view/user_name_screens/user_name_screen.dart';
import 'package:netflix_clone/view/user_name_screen/user_name_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => UserNameScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
                image: AssetImage("assets/images/Vector.png"), height: 70),
          ),
          SizedBox(
            height: 15,
          ),
          CircularProgressIndicator(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
