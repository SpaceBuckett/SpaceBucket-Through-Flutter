import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    PageData(
      icon: Icons.home,
      label: 'Home',
    ),
    PageData(
      icon: Icons.people,
      label: 'Users',
    ),
    PageData(
      icon: Icons.message,
      label: 'Messages',
    ),
    PageData(
      icon: Icons.settings,
      label: 'Settings',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 60,
          backgroundColor: Colors.white,
          color: Colors.grey,
          items: [
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.people, size: 30, color: Colors.white),
            Icon(Icons.message, size: 30, color: Colors.white),
            Icon(Icons.settings, size: 30, color: Colors.white),
          ],
          onTap: _onItemTapped,
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}

class PageData extends StatelessWidget {
  final IconData icon;
  final String label;
  PageData({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 170,
            color: Colors.grey,
          ),
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 18))
        ],
      ),
    );
  }
}
