import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<String> images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
  ];


  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: double.infinity,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black,
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.0),
                              ],
                              stops: [0.0, 0.9, 1.0],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Positioned(
            left: 24.0,
            bottom: 358.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.asMap().entries.map((entry) {
                int index = entry.key;
                return Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (_currentIndex == index)
                        Container(
                          width: 26.0,
                          height: 26.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: Container(
                            width: 18.0,
                            height: 18.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        )
                      else
                        Container(
                          width: 12.0,
                          height: 12.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          if (_currentIndex == images.length - 1) // Son slaytta
            Positioned(
              bottom: 50.0,
              left: 24.0,
              right: 24.0,
              child: Container(
                height: 55.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },

                  color: Colors.transparent,
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                      fontFamily: 'PPTelegraph',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          Positioned(
            top: 52.0,
            left: (MediaQuery.of(context).size.width - 108.0) / 2, // Ortala
            child: Text(
              'DRESS',
              style: TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'PPTelegraph',
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 32.0,
            left: 24.0,
            child: Container(
              width: 140.0,
              height: 3.0,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 107.0,
            right: 24,
            child: Container(
              width: 140.0,
              height: 3.0,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 400.0,
            left: 24.0,
            right: 24.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FIND YOUR',
                  style: TextStyle(
                    fontFamily: 'PPTelegraph',
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'DRESS STYLE',
                  style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PPTelegraph',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'NOW',
                  style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PPTelegraph',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
