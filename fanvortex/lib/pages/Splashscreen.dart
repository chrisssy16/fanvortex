// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:fanvortex/pages/Login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the login screen using named route
        Navigator.pushNamed(context, '/login');
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.asset(
              'lib/images/background.jpg',
              fit: BoxFit.cover,
            ),
            
            // Transparency
            Container(
              color: Colors.black.withOpacity(0.5), // Adjust opacity here (0.0 to 1.0)
            ),
            
            // Content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Fan Vortex',
                    style: TextStyle(
                      fontFamily: 'CustomFont1',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Elevate Your K-pop Business:\nRide the Wave of Success with \nOur Innovative MarTech Solutions!',
                    style: TextStyle(
                      fontFamily: 'CustomFont2',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
