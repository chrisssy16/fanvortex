// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword ({super.key});
  @override
  Widget build(BuildContext context) {
              return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background Image
          Image.asset(
            'lib/images/background.jpg',
            fit: BoxFit.cover,
          ),

          // Transparency
          Container(
            color: Colors.black.withOpacity(0.45),
          ),

          // Content
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Logo
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Text(
                      'Fan Vortex',
                      style: TextStyle(
                        fontFamily: 'CustomFont1',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  // Title
                  Text(
                    'Enter your Email Address',
                    style: TextStyle(
                      fontFamily: 'CustomFont2',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 30),

                  // enter Email Address
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter verification code',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),

                 

                SizedBox(height: 20),
                       SizedBox(
                           width: 200, // Set the desired width
                          height: 50, // Set the desired height
                               child: ElevatedButton(
                                 onPressed: () {
                                  // Navigate to the home page
                                 Navigator.pushReplacementNamed(context, '/login',);
                                    },
                                 style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.black, // Background color
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20), // Radius
                                                       ),
                                          textStyle: TextStyle(
                                            fontFamily: 'CustomFont2',
                                             ),
                                                      ),
                                              child: Text('SUBMIT EMAIL'),
                                                    ),
                                                  ),
             

                    
                  
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
