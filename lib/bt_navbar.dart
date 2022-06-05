import 'package:fineta/screens/homepage.dart';
import 'package:fineta/screens/split_bill.dart';
import 'package:flutter/material.dart';
import 'package:fineta/screens/Profile.dart';
class BtNavigationBar extends StatefulWidget {
  const BtNavigationBar({Key? key}) : super(key: key);

  @override
  State<BtNavigationBar> createState() => _BtNavigationBarState();
}

class _BtNavigationBarState extends State<BtNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(title: "homescreen"),
    Split_Bill(title: 'Split-Bill'),

    // Text(
    //   "Split Bill",
    //   style: TextStyle(color: Colors.white),
    // ),
    Text(
      "Community",
      style: TextStyle(color: Colors.white),
    ),
    Profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff080C15),
          selectedItemColor: Colors.blue,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/home_icon.png"),
              label: 'Home',
              activeIcon: Image.asset(
                "assets/icons/home_icon.png",
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/splitbill_icon.png"),
              label: 'Split Bill',
              activeIcon: Image.asset(
                "assets/icons/splitbill_icon.png",
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/community_icon.png"),
              label: 'Social',
              activeIcon: Image.asset(
                "assets/icons/community_icon.png",
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/profile_icon.png"),
              label: 'Profile',
              activeIcon: Image.asset(
                "assets/icons/profile_icon.png",
                color: Colors.blue,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
