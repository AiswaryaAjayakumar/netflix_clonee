// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:netflix_clone/utils/color_constants.dart';
// import 'package:netflix_clone/utils/image_constants.dart';
// import 'package:netflix_clone/utils/profile_images.dart';
// import 'package:netflix_clone/view/bottom_navigation/botton_navigation.dart';

// class UserNameScreen extends StatelessWidget {
//   const UserNameScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Center(
//             child: Image(
//           image: AssetImage("assets/images/Vector.png"),
//           height: 90,
//           width: 100,
//         )),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Image(
//               image: AssetImage("assets/images/pencil.png"),
//               height: 30,
//               width: 40,
//             ),
//           )
//         ],
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(60),
//           child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
//             itemCount: profileImages.length + 1,
//             itemBuilder: (context, index) => index < profileImages.length
//                 ? InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => BottomNav(),
//                           ));
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 100,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             image: DecorationImage(
//                                 image:
//                                     AssetImage(profileImages[index]["image"]),
//                                 fit: BoxFit.cover),
//                             color: Colors.amber,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           profileImages[index]["name"],
//                           style: TextStyle(color: ColorConstants.mainWhite),
//                         )
//                       ],
//                     ),
//                   )
//                 : Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(600),
//                         color: Colors.white,
//                         image: DecorationImage(
//                           image: AssetImage("assets/images/Union.png"),
//                         )),
//                   ),
//           ),
//         ),
//       ),

// ignore_for_file: prefer_const_constructors

//       // Center(
//       //   child: Text(
//       //     "Who's Watching?",
//       //     style: TextStyle(color: Colors.white),
//       //   ),
//       // ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
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
            itemCount: profileImages.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => index < profileImages.length
                ? InkWell(
                    onTap: () {
                      // write code to navigate to home screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNav(),
                          ));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(
                                      profileImages[index]["image"]!),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          profileImages[index]["name"]!,
                          style: TextStyle(color: ColorConstants.mainWhite),
                        )
                      ],
                    ),
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
                                        "assets/images/Union.png",
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
