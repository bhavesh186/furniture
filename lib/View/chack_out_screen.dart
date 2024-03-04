import 'package:fernitur/Common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/button.dart';

class ChackOutScreen extends StatefulWidget {
  const ChackOutScreen({super.key});

  @override
  State<ChackOutScreen> createState() => _ChackOutScreenState();
}

class _ChackOutScreenState extends State<ChackOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check out'),
        titleSpacing: 100,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping address', style: TextStyle(
                      color: AppColor.textcolor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),),
                    Icon(Icons.edit),
                  ],
                ),

                SizedBox(height: 10.h,),

                Container(
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bruno Fernandes',style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),),

                        SizedBox(height: 10.h,),

                        Container(height: 0.5.h, color: AppColor.textcolor,),

                        SizedBox(height: 10.h,),

                        Text('25 rue Robert Latouche, Nice, 06200, Côte D’azur, France', style: TextStyle(
                          color: AppColor.textcolor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 20.h,),


            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment', style: TextStyle(
                      color: AppColor.textcolor,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),),
                    Icon(Icons.edit),
                  ],
                ),

                SizedBox(height: 10.h,),

                Container(
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50.h,
                            width: 75.w,
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

                            child: Image.asset('Images/mastercard.png', scale: 2.5,),
                          ),
                        ),

                        SizedBox(width: 10.w,),
                        
                        Text('**** **** **** 3947', style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 20.h,),

      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery method', style: TextStyle(
                color: AppColor.textcolor,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),),
              Icon(Icons.edit),
            ],
          ),

          SizedBox(height: 10.h,),

          Container(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('Images/Logo.png', scale: 2.5,),
                  ),

                  SizedBox(width: 10.w,),

                  Text('Fast (2-3days)', style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),

                ],
              ),
            ),
          ),

        ],
      ),

        SizedBox(height: 20.h,),



      Column(
        children: [


        Container(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order', style: TextStyle(
                    color: AppColor.textcolor,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),),

                    Text('\$ 95.00', style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),),
                  ],
                ),

                SizedBox(height: 10.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery', style: TextStyle(
                      color: AppColor.textcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),),

                    Text('\$ 5.00', style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),),
                  ],
                ),

                SizedBox(height: 10.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: TextStyle(
                      color: AppColor.textcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),),

                    Text('\$ 100.00', style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),


              ],
            ),
          ),
        ),

      ],
    ),


        SizedBox(height: 20.h,),

            GlobleButton(
              onTap: () {},
              button: 'Submit order',
            ),
          ],
        ),
      ),
    );
  }
}
