// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Signup.dart';
import 'Forgotpassword.dart';

class Login extends StatelessWidget {
  const Login ({super.key});

  // This widget is the root of your application.
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
                    padding: const EdgeInsets.only(top: 135.0),
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

                  SizedBox(height: 40),

                  // Title
                  Text(
                    'Log in to your page',
                    style: TextStyle(
                      fontFamily: 'CustomFont2',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 40),

                  // username Input Field
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
                        hintText: 'Enter Username',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  // Password Input Field
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal:10),
                      ),
                    ),
                  ),

                SizedBox(height: 20),
                       SizedBox(
                           width: 100, // Set the desired width
                          height: 50, // Set the desired height
                               child: ElevatedButton(
                                 onPressed: () {
                                  // Navigate to the home page
                                 Navigator.pushReplacementNamed(context, '/navbar');
                                    },
                                 style: ElevatedButton.styleFrom(
                                     primary: Colors.black, // Background color
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20), // Radius
                                                       ),
                                          textStyle: TextStyle(
                                            fontFamily: 'CustomFont2',
                                             ),
                                                      ),
                                              child: Text('LOG IN'),
                                                    ),
                                                  ),
                 SizedBox(height: 20),

                  // Forgot Password
                  GestureDetector(
                    onTap: () {
                      // Navigate to the forgot password page
                      Navigator.pushNamed(context, '/forgotpassword');
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'CustomFont2',
                        fontSize: 15,
                        decoration: TextDecoration.underline, 
                      ),
                      
                    ),
                  ),
                     SizedBox(height: 50),

                  // Not A Member? (Underlined)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup'); //  "Not A Member?" is tapped
                    },
                       child: Text(
                      'Not A Member? Create your account',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'CustomFont2',
                        decoration: TextDecoration.underline, // Underline
                      ),
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
