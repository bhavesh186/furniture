import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/common_color.dart';
import '../Common/comon_text.dart';
import '../profile_tabbar.dart';
import 'home_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Order'),
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            // unselectedLabelColor: Color(0xff909090),
            dividerHeight: 0,
            // labelColor: Colors.black12,
            tabs: <Widget>[
              Tab(
                icon: Text('Delivered'),
              ),
              Tab(
                icon: Text('Processing'),
              ),
              Tab(
                icon: Text('Canceled'),
              ),
            ],
          ),
        ),
        body: TabBarView(
         children: <Widget>[
           ProfileTabBar(),
           Center(
             child: Text("It's rainy here"),
           ),
           Center(
             child: Text("It's sunny here"),
           ),
         ],
                    ),
      ),
    );
  }
}
