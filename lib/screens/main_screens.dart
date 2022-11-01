import 'package:flutter/material.dart';

import '../models/nav_item.dart';
import '../utils/constants.dart';
import 'commingScreen/coming_screen.dart';
import 'contentsListScreen/contents_list_screen.dart';
import 'home_screen/home_screen.dart';

class MainScreens extends StatefulWidget {

  static String routeName = "/main_screens";

  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {

  int _selectedIndex = 0;
  List pages = [
    HomeScreen(),
    ComingScreen(),
    ContentsListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: kDarkColor,
        selectedFontSize: 12.0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: List.generate(
          navItems.length,
              (index) => BottomNavigationBarItem(
            icon: Icon(navItems[index].icon),
            label: navItems[index].label,
          ),
        ),
      ),
    );
  }
}