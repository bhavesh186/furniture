import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/button.dart';
import '../Common/common_color.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({super.key});

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            SizedBox(
              height: 124.h,
            ),
            Center(
              child: Text(
                'SUCCESS!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.poppins.toString(),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Image.asset(
              'Images/Graphics.png',
              scale: 2.5,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Your order will be delivered soon.\nThank you for choosing our app!',
              style: TextStyle(
                fontFamily: GoogleFonts.poppins.toString(),
                fontSize: 16.h,
                fontWeight: FontWeight.w400,
                color: AppColor.textcolor,
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            GlobleButton(
              onTap: () {},
              button: 'Track your orders',
            ),
            SizedBox(height: 20.h),
            GlobleButton(
              onTap: () {},
              button: 'Back to home',
            ),
          ],
        ),
      ),
    );
  }
}
