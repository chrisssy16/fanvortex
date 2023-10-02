// ignore_for_file: use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:flutter/material.dart';

class Eventcalendardark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      backgroundColor: Color(0x33363f), // Background color
      body: Stack(
        children: <Widget>[
          // Background Image or Content
          Positioned(
            top: 50, 
            left: 20, 
            child: Text(
              'Upcoming Events',
              style: TextStyle(
                color:Colors.white,
                fontFamily: 'customfont2', // Apply your custom font family
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              top: 100, 
              left: 30, 
            child: Image.asset(
              'lib/images/calendar.jpg', // Path to your image
              width: 350.0,
              height: 350.0,
              fit: BoxFit.cover,
            ),
          ), // Add a comma here
          Positioned(
            top: 500, 
            left: 30, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                EventContainer(
                  date: '11 TH SEPTEMBER',
                  eventName: 'NCT DREAM',
                  location: 'LIVE AT NEOCITY',
                ),
                EventContainer(
                  date: '14 TH SEPTEMBER',
                  eventName: 'NCT127',
                  location: 'LIVE AT NEOCITY',
                ),
                EventContainer(
                  date: '16 TH SEPTEMBER',
                  eventName: 'WAYV',
                  location: 'LIVE AT NEOCITY',
                ),
                EventContainer(
                  date: '25 TH SEPTEMBER',
                  eventName: 'AESPA',
                  location: 'LIVE AT KWANGYA',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EventContainer extends StatelessWidget {
  final String date;
  final String eventName;
  final String location;

  EventContainer({
    required this.date,
    required this.eventName,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.grey,
      width:350,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        
        children: <Widget>[
          Text(
            date,
            style: TextStyle(
               color:const Color.fromARGB(255, 0, 0, 0),
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'CustomFont2',
            ),
          ),
          Text(
            eventName,
            style: TextStyle(
               color:const Color.fromARGB(255, 0, 0, 0),
              fontSize: 12.0,
               fontFamily: 'CustomFont2',
            ),
          ),
          Text(
            location,
            style: TextStyle(
               color:const Color.fromARGB(255, 0, 0, 0),
              fontSize: 12.0,
               fontFamily: 'CustomFont2',
            ),
          ),
        ],
      ),
    );
  }
}
