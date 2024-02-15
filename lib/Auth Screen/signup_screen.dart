import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/button.dart';
import '../Common/common_color.dart';
import '../Common/common_image.dart';
import '../Common/newtext_formfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black26,
                      height: 1.h,
                      width: 50.h,
                    ),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Image.asset(
                    AppImage.Loginscreenimg,
                    scale: 3,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black26,
                      height: 1.h,
                      width: 50.h,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  Text(
                    'Hello!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.poppins.toString(),
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    'WELCOME BACK',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.poppins.toString(),
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Container(
                  height: 490.h,
                  width: 327.w,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      color: AppColor.boxshadowcolor,
                      blurRadius: 40.0,
                    ),
                  ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 50, bottom: 10),
                        child: NewTextFormfield(
                          yourhinttext: 'Enter Your Name',
                          yourlabletext: 'Name',
                          iconwidget: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: NewTextFormfield(
                          yourhinttext: 'Enter Your Email',
                          yourlabletext: 'Email',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: NewTextFormfield(
                          yourhinttext: 'Enter Your Password',
                          yourlabletext: 'Password',
                          iconwidget: Icon(
                            Icons.remove_red_eye,
                            size: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: NewTextFormfield(
                          yourhinttext: 'Confirm Your Password',
                          yourlabletext: 'Confirm',
                          iconwidget: Icon(
                            Icons.remove_red_eye,
                            size: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GlobleButton(
                          onTap: () {},
                          button: 'Sign up',
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have account?',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: GoogleFonts.inter.toString(),
                            ),
                          ),
                          Text(
                            ' Sign up',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.inter.toString(),
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
        ),
      ),
    );
  }
}
