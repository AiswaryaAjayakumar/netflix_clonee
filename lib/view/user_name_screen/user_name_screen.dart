// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/utils/profile_images.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: profileImages.length + 1,
            itemBuilder: (context, index) => index < profileImages.length
                ? Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(profileImages[index]["image"]),
                              fit: BoxFit.cover),
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        profileImages[index]["name"],
                        style: TextStyle(color: ColorConstants.mainWhite),
                      )
                    ],
                  )
                : Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(600),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/Union.png"),
                        )),
                  ),
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
