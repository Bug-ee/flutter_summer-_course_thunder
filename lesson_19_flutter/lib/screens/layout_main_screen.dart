import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/screens/add_post_screen.dart';
import 'package:lesson_19_flutter/screens/login_screen.dart';
import 'package:lesson_19_flutter/screens/profile_screen.dart';
import 'package:lesson_19_flutter/screens/signup_screen.dart';

import 'home_screen.dart';

class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ProfileScreen(),
    AddPostScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 34),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: 34,
            ),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 34,
            ),
            label: '●',
          ),
        ],
      ),
    );
  }
}
