// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  // List of K-pop bands data
  final List<KpopBand> kpopBands = [
    KpopBand(number: 1, name: ' NCT DREAM', imagePath: 'lib/images/h-4.jpg'),
    KpopBand(number: 2, name: 'NCT 127', imagePath: 'lib/images/h-5.jpg'),
    KpopBand(number: 3, name: 'NCT DJJ', imagePath: 'lib/images/h-6.jpg'),
    KpopBand(number: 4, name: 'WAYV', imagePath: 'lib/images/h-7.jpg'),
    KpopBand(number: 5, name: 'SEVENTEEN', imagePath: 'lib/images/h-8.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE4CEE5), // Background color E4CEE5
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Heading: Spread Kpop Culture
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Text(
                'SPREAD KPOP CULTURE',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont2', 
                ),
                textAlign: TextAlign.center,
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
    height: 200.0,
    enlargeCenterPage: true,
    autoPlay: true,
  ),
  items: [
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,          
        ),
      ),
      child: Image.asset('lib/images/h-1.jpg', fit: BoxFit.cover),
    ),
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, 
          width: 2.0,           
        ),
      ),
      child: Image.asset('lib/images/h-2.jpg', fit: BoxFit.cover),
    ),
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, 
          width: 2.0,           
        ),
      ),
      child: Image.asset('lib/images/h-3.jpg', fit: BoxFit.cover),
    ),
   
  ],
            ),

            // Heading: Trending Kpop Groups
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Text(
                'TRENDING KPOP GROUPS',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont2',
                ),
                textAlign: TextAlign.center, 
              ),
            ),

            // Top 5 K-pop Bands Containers
            Container(
              
              height: 200, 
              child: ListView.builder(
                
                scrollDirection: Axis.horizontal, // Scroll horizontally
                itemCount: kpopBands.length,
                itemBuilder: (context, index) {
                  return KpopGroupContainer(
                    kpopBand: kpopBands[index],
                    
                  );
                },
              ),
            ),
                        Padding(
                          
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Top Three Social Medias Used by Kpop Fandom',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont2',
                ),
                textAlign: TextAlign.center, // Center the text
              ),
            ),

            // Social Media Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaIcon(imagePath: 'lib/images/2.jpg'),
                SizedBox(width: 20),
                SocialMediaIcon(imagePath: 'lib/images/3.jpg'), 
                SizedBox(width: 20), 
                SocialMediaIcon(imagePath: 'lib/images/1.jpg'), 
              ],
            ),

          ],
        ),

      ),
      
    );
  }
}

class KpopBand {
  final int number;
  final String name;
  final String imagePath;

  KpopBand({
    required this.number,
    required this.name,
    required this.imagePath,
  });
}

class KpopGroupContainer extends StatelessWidget {
  final KpopBand kpopBand;

  KpopGroupContainer({
    required this.kpopBand,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 200, 
      margin: EdgeInsets.all(8.0), 
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      color: Colors.white,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '${kpopBand.number}',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'CustomFont2', 
            ),
          ),
          Text(
            kpopBand.name,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'CustomFont2', 
            ),
          ),
          Image.asset(
            kpopBand.imagePath,
            width: 120,
            height: 120, 
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
class SocialMediaIcon extends StatelessWidget {
  final String imagePath;

  SocialMediaIcon({
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 50, 
      height: 50, 
    );
  }
}




