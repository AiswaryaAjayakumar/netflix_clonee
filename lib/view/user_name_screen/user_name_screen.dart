
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/global_widgets/gllobal_user_name.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/utils/profile_images.dart';
import 'package:netflix_clone/view/bottom_navigation/botton_navigation.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        title: SizedBox(
            width: 138,
            height: 38,
            child: Image.asset("assets/images/Vector.png")),
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        actions: [
          SizedBox(
            height: 24,
            width: 24,
            child: Image.asset("assets/images/pencil.png"),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: ImageDb.profileImages.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => index <
                    ImageDb.profileImages.length
                ? InkWell(
                    onTap: () {
                      // write code to navigate to home screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNav(),
                          ));
                    },
                    child: GlobalUserNameScreen(
                        name: ImageDb.profileImages[index]["name"]!,
                        imgUrl: ImageDb.profileImages[index]["image"]!)
                   
                   
                    )
                : InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstants.mainWhite,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstants.profileImageAdd,
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Add",
                          style: TextStyle(color: ColorConstants.mainWhite),
                        )
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
