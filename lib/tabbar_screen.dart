import 'package:flutter/material.dart';

import 'Common/common_color.dart';
import 'View/appbar.dart';
import 'View/home_screen.dart';


class TabBarScrnFive extends StatefulWidget {
  const TabBarScrnFive({super.key});

  @override
  State<TabBarScrnFive> createState() => _TabBarScrnFiveState();
}

class _TabBarScrnFiveState extends State<TabBarScrnFive>
    with TickerProviderStateMixin {
  int selectindex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  void _onItemTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [

            AppBarScreen(),
           // CommonAppBar(headtext: 'Profile'),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: TabBar(
                  indicatorColor: AppColor.primarycolor,
                  controller: _tabController,
                  labelColor: AppColor.primarycolor,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(fontSize: 11),
                  tabs: [

                    Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectindex == 0
                                ? AppColor.primarycolor
                                : Colors.black12,
                          ),
                          child: Image.asset(
                            'Images/star 1.png',
                            scale: 3,
                            color: selectindex == 0
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Popular',
                          style: TextStyle(
                              color: selectindex == 0
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectindex == 1
                                ? AppColor.primarycolor
                                : Colors.black12,
                          ),
                          child: Image.asset(
                            'Images/chair 4.png',

                            scale: 3,
                            color: selectindex == 1
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Chair',
                          style: TextStyle(
                              color: selectindex == 1
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: selectindex == 2
                                ? AppColor.primarycolor
                                : Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'Images/Group.png',
                            scale: 3,
                            color: selectindex == 2
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Table',
                          style: TextStyle(
                              fontSize: 9,
                              color: selectindex == 2
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: selectindex == 3
                                ? AppColor.primarycolor
                                : Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'Images/sofa 1.png',
                            scale: 1,
                            color: selectindex == 3
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Armchair',
                          style: TextStyle(
                              fontSize: 10,
                              color: selectindex == 3
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: selectindex == 4
                                ? AppColor.primarycolor
                                : Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'Images/bed 1.png',
                            scale: 2.5,
                            color: selectindex == 4
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Bed',
                          style: TextStyle(
                              color: selectindex == 4
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),
                  ],
                  onTap: _onItemTapped,
                  mouseCursor: MouseCursor.uncontrolled,
                ),


              ),
            ),

            Expanded(
              child: TabBarView(controller: _tabController, children: [

                HomeScreen(),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),


              ],),
            ),
          ],
        ),
      ),
    );
  }
}
