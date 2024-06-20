import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/button.dart';
import '../Common/common_color.dart';
import '../Common/common_image.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating & Review'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'Images/Mask Group (3).png',
                  scale: 3,
                ),
                SizedBox(
                  width: 25.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Minimal Stand',
                      style: TextStyle(
                        fontFamily: GoogleFonts.inter.toString(),
                        // fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 33,
                            color: Colors.orangeAccent,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter.toString(),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '10 reviews',
                      style: TextStyle(
                        fontFamily: GoogleFonts.inter.toString(),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20.h,),

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            height: 160.h,

                            child: Stack(

                              alignment: Alignment.topLeft,

                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Container(
                                   // height: 100.h,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                                      child: Column(
                                        children: [

                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text('Bruno Fernandes'),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star),
                                                      Icon(Icons.star),
                                                      Icon(Icons.star),
                                                      Icon(Icons.star),
                                                      Icon(Icons.star),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Text('20/03/2020'),
                                            ],
                                          ),
                                          Text(
                                              'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app.'),
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            SizedBox(
              height: 20.h,
            ),
            GlobleButton(
              onTap: () {},
              button: 'Write a review',
            ),
          ],
        ),
      ),
    );
  }
}
