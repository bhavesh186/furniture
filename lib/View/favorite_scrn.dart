import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Common/button.dart';
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

          SizedBox(height: 40.h,),

          Center(child: Text('Favorites', style: TextStyle(
            fontSize:20,
            fontWeight: FontWeight.w400,
          ),)),

          SizedBox(height: 10.h,),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 130,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black26,
                      width: 0.7,
                    ),
                  )),
                  child: Row(
                    children: [
                      Container(
                        width: 90,
                        child: Image.asset(
                          AppImage.favoritepageimg[index],
                          scale: 2,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15.h,
                                  ),
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
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.highlight_remove_outlined),
                                  Container(
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffE0E0E0),
                                    ),
                                      child: Icon(Icons.shopping_bag),
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

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GlobleButton(onTap: () {  }, button: 'Add all to my cart',),
          ),
          
        ],
      ),
    );
  }
}
