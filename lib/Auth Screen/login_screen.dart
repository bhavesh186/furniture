import 'dart:convert';
import 'dart:developer';

import 'package:fernitur/Auth%20Screen/signup_screen.dart';
import 'package:fernitur/Common/common_color.dart';
import 'package:fernitur/Common/common_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../Common/button.dart';
import '../Common/newtext_formfield.dart';
import '../tabbar_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> login(String email, String password,) async {
    try {
      http.Response response = await http.post(
        Uri.parse('https://typescript-al0m.onrender.com/api/user/login'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      log(response.statusCode.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = jsonDecode(response.body);
        log('log in!');
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => TabBarScrnFive()),
            (route) => false);
      } else {
        log('fail!');
      }
    } catch (e) {
      log(e.toString());
    }
  }

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
                height: 20.h,
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
                  height: 396.h,
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
                            left: 20, right: 20, top: 50, bottom: 20),
                        child: NewTextFormfield(
                          addController: emailController,
                          yourhinttext: 'Enter Your Email',
                          yourlabletext: 'Email',
                          iconwidget: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: NewTextFormfield(
                          addController: password,
                          yourhinttext: 'Enter Your Password',
                          yourlabletext: 'Password',
                          iconwidget: Icon(
                            Icons.remove_red_eye,
                            size: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: GoogleFonts.inter.toString(),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GlobleButton(
                          onTap: () {
                            login(emailController.text, password.text,);
                          },
                          button: 'Log in',
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.inter.toString(),
                          ),
                        ),
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
