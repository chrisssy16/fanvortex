// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Userprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFE4CEE5), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login'); 
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.dark_mode),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/navbardark');
                    },
                  )
                  ],
              ),
            ),
           Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Profile', 
                style: TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold, 
                  fontFamily: 'CustomFont2' // 
                ),
              ),
            ),
           SizedBox(height: 20),
              Center(
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, 
                ),
                child: Center(
                       child: ClipOval(
                  child: Image.asset('lib/images/profilepic.jpg', 
                    width: 150.0,
                    height:150.0,
                  )
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
Center(
  child: Column(
    children: <Widget>[
      Text(
        'Moon Child',
        style: TextStyle(
          fontFamily: 'customfont2', // Apply your custom font family
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'BUSINESS ID: 127',
        style: TextStyle(
          fontFamily: 'customfont2', // Apply your custom font family
          fontSize: 16.0,
        ),
      ),
      Text(
        'JOINED IN 2023',
        style: TextStyle(
          fontFamily: 'customfont2', // Apply your custom font family
          fontSize: 16.0,
        ),
      ),
    ],
  ),
  
),
SizedBox(height: 30),
Center(
  child: Column(
    children: <Widget>[
      Container(
        child: Text(
          'Login ID:',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),
      Container(
        child: Text(
          'Moonchild127',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),

SizedBox(height: 20),
     Container(
        child: Text(
          'Name:',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),
      Container(
        child: Text(
          'Moonchild',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),

SizedBox(height: 20),
      Container(
        child: Text(
          'Nature of business:',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),
      Container(
        child: Text(
          'Apparel:',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),
SizedBox(height: 20),
      Container(
        child: Text(
          'Email adress:',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),
      Container(
        child: Text(
          'moonchild127@gmail.com:',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),
      

SizedBox(height: 20),
      Container(
        child: Text(
          'Region:',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
      ),
      Container(
        child: Text(
          'South Korea',
          style: TextStyle(
            fontFamily: 'customfont2',
            fontSize: 16.0,
          ),
        ),
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
              







   