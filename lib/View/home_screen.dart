import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Common/common_image.dart';
import '../Common/comon_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            mainAxisExtent: 300,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext context, index) {
            return Stack(
              children:[ Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(AppImage.gridviewimage[index],scale: 2,height: 220.h, ),
                    Text(AppText.homepagecomontxt[index],),
                    Text(AppText.homepageprice[index],),
                  ],
                ),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.black26),
                //   borderRadius: BorderRadius.circular(10),
                // ),
              ),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 90),
                          child: Container(
                            height: 35.h,
                              width: 35.w,
                              decoration: BoxDecoration(
                                color: Color(0xffE0E0E0),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(Icons.shopping_bag, size: 30,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                
            ]

            );
          },
        ),
      ),
    );
  }
}
