// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class Setupprofile extends StatelessWidget {
  const Setupprofile({super.key});
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1A24), // Background color
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Heading
              Container(
                width: 250,
                height: 55,
                child: Text(
                  'Set Up Your Profile',
                  style: TextStyle(
                    fontFamily: 'CustomFont1',
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 30),

            
              Stack(
                alignment: Alignment.center,
                children: [
                  // Profile Picture
                  Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Icon(
                      Icons.person, // Default user profile icon
                      size: 100,
                      color: Colors.white,
                    ),
                  ),

                  // Edit Icon 
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 65, 57, 57),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                 
                ],

                
              ),
             SizedBox(height: 40),

                  // Enter business name
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

                  SizedBox(height: 20),

                  // Enter Business Type
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
                  // description
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
                        hintText: 'Describe your product and services',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal:10),
                      ),
                    ),
                  ),
                SizedBox(height: 20),
                       SizedBox(
                           width: 100,
                          height: 50, 
                               child: ElevatedButton(
                                 onPressed: () {
                                  // Navigate to the home page
                                 Navigator.pushReplacementNamed(context, '/navbar');
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
                                              child: Text('SAVE'),
                                                    ),
                                                  ),
              // Save Button (Same as previous code)
            ],
          ),
        ),
      ),
    );
  }
}