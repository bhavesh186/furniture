

import 'package:fernitur/Common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({super.key});

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();

}
class textList{

  static List<String> myOrder = [
    "Canceled",
    "Processing",
    "Delivered",
  ];

}


class _ProfileTabBarState extends State<ProfileTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20,),
            child: Container(

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 10, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order No238562312', style: TextStyle(
                          color: Colors.black,
                        ),),
                        Text('20/03/2020'),
                      ],
                    ),
                  ),

                  Divider(),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Text('Quantity:', style: TextStyle(
                               fontFamily: GoogleFonts.poppins.toString(),
                               fontWeight: FontWeight.w400,
                               fontSize: 16,
                             ),),
                             Text('03', style: TextStyle(
                               fontFamily: GoogleFonts.poppins.toString(),
                               fontWeight: FontWeight.w600,
                               fontSize: 16,
                             ),)
                           ],
                         ),
                         Row(
                           children: [
                               Text('Total Amount:', style: TextStyle(
                                 fontFamily: GoogleFonts.poppins.toString(),
                                 fontWeight: FontWeight.w400,
                                 fontSize: 16,
                               ),),
                               Text('\$150', style: TextStyle(
                                 fontFamily: GoogleFonts.poppins.toString(),
                                 fontWeight: FontWeight.w600,
                                 fontSize: 16,
                               ),),
                           ],
                         ),
                       ],
                     ),
                   ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                        child: TextButton(onPressed: (){}, child: Container(
                          height: 36.h,
                          width: 78.w,
                          decoration: BoxDecoration(
                            color: AppColor.primarycolor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child: Text('Details', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.poppins.toString(),
                            color: Colors.white,
                          ),),
                          ),
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [

                            // if(textList.myOrder[index] == 'Processing'){
                            //
                            //   // Icon(Icons.timelapse_sharp),
                            // }else{
                            //   print(Text('dt'),),
                            // }


                           Text(textList.myOrder[index]),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),

              height: 173.h,
              width: double.infinity,
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
          );
        },
      ),
    );
  }
}
