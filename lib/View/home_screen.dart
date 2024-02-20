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
                    Image.asset(AppImage.gridviewimage[index],scale: 2,height: 220.h,),
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
                          padding: const EdgeInsets.only(right: 17),
                          child: Icon(Icons.shopping_bag, size: 30,),
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
