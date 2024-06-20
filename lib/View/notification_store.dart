import 'package:fernitur/Common/comon_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/common_image.dart';

class NotificationStoreScrn extends StatefulWidget {
  const NotificationStoreScrn({super.key});

  @override
  State<NotificationStoreScrn> createState() => _NotificationStoreScrnState();
}

class _NotificationStoreScrnState extends State<NotificationStoreScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaton', style: TextStyle(
          fontWeight: FontWeight.w500,
        ),),
        centerTitle: true,

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 120,
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
                          AppImage.notificationscrnimg[index],
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
                                    AppText.notificatioinscreen[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,

                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff909090),
                                        ),
                                      ),

                                      SizedBox(width: 35,),

                                     // Text(AppText.notificationtext[index],),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              ),
                              Column(

                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  Icon(Icons.highlight_remove_outlined),
                                  Text(AppText.notificationtext[index],),
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

            ),
          ),
        ],
      ),
    );
  }
}
