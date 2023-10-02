// ignore_for_file: prefer_const_constructors

import 'package:fanvortex/pages/Home.dart';
import 'package:fanvortex/pages/Homedark.dart';
import 'package:fanvortex/pages/Navbardark.dart';
import 'package:fanvortex/pages/Userprofiledark.dart';
import 'pages/Navbar.dart';

import 'package:flutter/material.dart';
import 'package:fanvortex/pages/Userprofile.dart';
import 'pages/Forgotpassword.dart';
import 'pages/Setupprofile.dart';
import 'pages/Verify.dart';
import 'pages/splashscreen.dart';
import 'pages/Login.dart'; 
import 'pages/Signup.dart';



void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash', // initial route
    routes: {
      '/splash': (context) => SplashScreen(), 
      '/login': (context) => Login(), 
      '/signup': (context) => Signup(), 
      '/verify': (context) => Verify(),
      '/forgotpassword': (context) => Forgotpassword(),
      '/setupprofile':(context) => Setupprofile(),
      '/navbar':(context) => Navbar(),
      '/home': (context) =>Home(),
      '/navbardark': (context) =>Navbardark(),
      '/homedark':(context) =>Homedark(),
      '/userprofile': (context) => Userprofile(),
      '/userprofiledark': (context) => Userprofiledark(),
    },

  );
}
}