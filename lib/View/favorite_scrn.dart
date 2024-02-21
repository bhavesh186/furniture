import 'package:flutter/material.dart';

import '../Common/common_color.dart';
import '../Common/common_image.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 160,
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          //                   <--- left side
                          color: Colors.black12,
                          width: 0.7,
                        ),
                      )),
                  child: Row(
                    children: [
                      Container(
                        width: 90,

                        child: Image.asset(AppImage.favoritepageimg[index], scale: 2.5,),

                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Minimal Stand",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "\$ 25.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 4,

            ),
          ),





        ],
      ),
    );
  }
}
