
import 'package:fernitur/practic/firebase_profile.dart';
import 'package:fernitur/practic/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Auth Screen/login_screen.dart';
import 'View/cart_screen.dart';
import 'View/congrets.dart';
import 'View/notification_store.dart';


import 'View/order_screen.dart';
import 'View/review_screen.dart';
import 'View/shiping_address.dart';
import 'botom_navigation_bar.dart';
import 'commonClass/checkBox.dart';
String? tokan ;
void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   final SharedPreferences prefs = await SharedPreferences.getInstance();
   tokan = prefs.getString('key');
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.cu,
  // );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void initState() {
    gettokan();
    super.initState();
  }

  String tokan = "";
  Future<void> gettokan() async {

    print("tokan ${tokan}");
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
         // home: SignInScreen(),
          home: tokan != null ? const BottomNavigation() :  LogInScreen(),
        );
      },
    );
  }
}
