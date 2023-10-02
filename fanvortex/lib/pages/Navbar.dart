// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:fanvortex/pages/Eventcalendar.dart';
import 'package:fanvortex/pages/Home.dart';
import 'package:fanvortex/pages/Trending.dart';
import 'package:fanvortex/pages/Userprofile.dart';

class Navbar extends StatefulWidget {
  Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Trending(),
    Eventcalendar(),
  Userprofile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            size: 30,
            color: Colors.black
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up,
              size: 30,
            color: Colors.black
            ),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,
              size: 30,
            color: Colors.black),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
              size: 30,
            color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


