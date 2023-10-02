// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Trendingdark extends StatefulWidget {
  @override
  _TrendingdarkState createState() => _TrendingdarkState();
}

class _TrendingdarkState extends State<Trendingdark> {
  late CameraController _cameraController;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      _cameraController = CameraController(cameras[0], ResolutionPreset.medium);
      await _cameraController.initialize();
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 3, 51, 59),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'MAKE YOUR PRODUCT THE NEXT HIT!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'CustomFont2',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: openCameraScreen,
                  child: productContainer('lib/images/t-1.jpg'),
                ),
                SizedBox(width: 20),
                productContainer('lib/images/t-2.jpg'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Supercharge your marketing efforts with our cutting-edge promotional tool, empowering you to effortlessly reach your target audience, enhance brand visibility, and drive unparalleled growth for your products.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'CustomFont2',
              ),
            ),
            SizedBox(height: 20),
            dropProductBox(),
            SizedBox(height: 20),
            buildInputField('Enter product name'),
            SizedBox(height: 10),
            buildInputField('Brief description of product'),
            SizedBox(height: 10),
            buildInputField('Link to SNS or Webstore'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  fontFamily: 'CustomFont2',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productContainer(String imagePath) {
    return Container(
      width: 170,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
      ),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }

  Widget dropProductBox() {
    return GestureDetector(
      onTap: openCameraScreen,
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt),
              SizedBox(width: 10),
              Text(
                'Drop your product here',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'CustomFont2',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openCameraScreen() {
    if (_cameraController != null && _cameraController.value.isInitialized) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CameraScreen(cameraController: _cameraController),
        ),
      );
    }
  }

  Widget buildInputField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}

class CameraScreen extends StatelessWidget {
  final CameraController cameraController;

  CameraScreen({required this.cameraController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Screen'),
      ),
      body: Center(
        child: CameraPreview(cameraController),
      ),
    );
  }
}
