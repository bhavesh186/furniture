import 'package:fernitur/tabbar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Common/common_color.dart';
import 'View/favorite_scrn.dart';
import 'View/notification_store.dart';
import 'View/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    TabBarScrnFive(),
    FavoriteScreen(),
    NotificationStoreScrn(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        elevation: 0,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'Images/clarity_home-solid (1).png',
              scale: 3,
              color: _selectedIndex == 0 ? AppColor.primarycolor : Colors.black26,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'Images/marker 1.png',
              scale: 3,
              color: _selectedIndex == 1 ? AppColor.primarycolor : Colors.black26,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'Images/bell (1).png',
              scale: 3,
              color: _selectedIndex == 2 ? AppColor.primarycolor : Colors.black26,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'Images/bi_person-fill.png',
              scale: 3,
              color: _selectedIndex == 3 ? AppColor.primarycolor : Colors.black26,
            ),
            label: 'Cart',
          ),
        ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primarycolor,
        onTap: _onItemTapped,
      ),
    );
  }
}
