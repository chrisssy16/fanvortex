// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class Signup extends StatelessWidget {
  const Signup({super.key});

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
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Text(
                      'Fan Votex',
                      style: TextStyle(
                        fontFamily: 'CustomFont1',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Title
                  Text(
                    'Join the community!!!\nSign up.',
                    style: TextStyle(
                      fontFamily: 'CustomFont2',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 20),

                  // USERNAME Field
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color.fromARGB(255, 255, 255,255)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter New Username',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  //  EMAIL Field
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color:  Color.fromARGB(255, 255, 255, 255)),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Valid Email',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  //MobileNumber field
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Mobile Number',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),


                   SizedBox(height: 20),
                  //password field
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
                        hintText: 'Enter New Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
             

                SizedBox(height: 20),
                  //Confirm password field
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Sign Up Button
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the verify page
                      Navigator.pushNamed(context, '/verify');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: TextStyle(
                        fontFamily: 'CustomFont2',
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Text('SIGN UP'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
