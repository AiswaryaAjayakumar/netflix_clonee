// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Image(
          image: AssetImage("assets/images/Vector.png"),
          height: 90,
          width: 100,
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage("assets/images/pencil.png"),
              height: 30,
              width: 40,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            children: [
              Text(
                "Who's Watching?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  Image(image: AssetImage("assets/images/pic1.png")),
                  Image(image: AssetImage("assets/images/pic2.png")),
                  Image(image: AssetImage("assets/images/pic3.png")),
                  Image(image: AssetImage("assets/images/pic4.png")),
                  Image(image: AssetImage("assets/images/pic4.png")),
                ],
              ),
            ],
          ),
        ),
      ),

      // Center(
      //   child: Text(
      //     "Who's Watching?",
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
    );
  }
}
