import 'package:flutter/material.dart';
import 'package:fanvortex/pages/Eventcalendardark.dart';
import 'package:fanvortex/pages/Homedark.dart';
import 'package:fanvortex/pages/Trendingdark.dart';
import 'package:fanvortex/pages/Userprofiledark.dart';

class Navbardark extends StatefulWidget {
  Navbardark({super.key});

  @override
  State<Navbardark> createState() => _NavbardarkState();
}

class _NavbardarkState extends State<Navbardark> {
  int _currentIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    Homedark(),
    Trendingdark(),
    Eventcalendardark(),
    Userprofiledark()
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: Brightness.dark, // dark theme
        scaffoldBackgroundColor: Color.fromARGB(0, 8, 1, 15), 
      ),
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              size: 30,
              color: Color.fromARGB(255, 255, 255, 255)
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up,
                size: 30,
              color: const Color.fromARGB(255, 255, 255, 255)
              ),
              label: 'Trending',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,
                size: 30,
              color: const Color.fromARGB(255, 255, 255, 255)),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
                size: 30,
              color: const Color.fromARGB(255, 255, 255, 255)),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}


