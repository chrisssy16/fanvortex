import 'package:flutter/material.dart';

class Eventcalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE4CEE5), // Background color
      body: Stack(
        children: <Widget>[
        
          Positioned(
            top: 50, 
            left: 20, 
            child: Text(
              'Upcoming Events',
              style: TextStyle(
                fontFamily: 'customfont2', 
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 100, 
            left: 30, 
            child: Image.asset(
              'lib/images/calendar.jpg', //  image
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
      color: Colors.white,
      width:350,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        
        children: <Widget>[
          Text(
            date,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'CustomFont2',
            ),
          ),
          Text(
            eventName,
            style: TextStyle(
              fontSize: 12.0,
               fontFamily: 'CustomFont2',
            ),
          ),
          Text(
            location,
            style: TextStyle(
              fontSize: 12.0,
               fontFamily: 'CustomFont2',
            ),
          ),
        ],
      ),
    );
  }
}
