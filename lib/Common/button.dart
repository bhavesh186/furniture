import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common_color.dart';



class GlobleButton extends StatelessWidget {
  final VoidCallback onTap;
  final button;
  GlobleButton({super.key, required this.onTap, required this.button});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 55.h,

      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColor.primarycolor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(button, style: TextStyle(
                fontFamily: GoogleFonts.poppins().toString(),
                fontSize: 20,
                color: Colors.white,
              ),),
            ],
        ),),

      decoration: BoxDecoration(
        color: AppColor.primarycolor,
        borderRadius: BorderRadius.circular(10),
      ),

    );
  }
}
