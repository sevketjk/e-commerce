import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_slider/widget_slider.dart';

import 'detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = SliderController(
      duration: const Duration(milliseconds: 600),
    );

    final images = const [
      'assets/image1.jpg',
      'assets/image2.jpg',
      'assets/image3.jpg',

    ];
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 24),
                        child: Image.asset(
                          'assets/menu.png',
                          width: 45,
                          height: 45,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 24),
                        child: Image.asset(
                          'assets/notification.png',
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 33, left: 24, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FIND YOUR',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'PPTelegraph',
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'DRESS STYLE',
                              style: TextStyle(
                                fontFamily: 'PPTelegraph',
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 47,
                        height: 66,
                        margin: EdgeInsets.only(right: 24),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(25.5),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/search.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/all.jpg',
                                width: 68,
                                height: 68,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            bottom: 0,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.transparent,
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                    fontFamily: 'PPTelegraph',
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/man.jpg',
                                width: 68,
                                height: 68,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            bottom: 0,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.transparent,
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'Man',
                                  style: TextStyle(
                                    fontFamily: 'PPTelegraph',
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/woman.jpg',
                                width: 68,
                                height: 68,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            bottom: 0,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.transparent,
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'Woman',
                                  style: TextStyle(
                                    fontFamily: 'PPTelegraph',
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/winter.jpg',
                                width: 68,
                                height: 68,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            bottom: 0,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.transparent,
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'Winter',
                                  style: TextStyle(
                                    fontFamily: 'PPTelegraph',
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: WidgetSlider(
                    fixedSize: 300,
                    controller: controller,
                    itemCount: images.length,
                    itemBuilder: (context, index, activeIndex) {
                      // Widget builder for each item in the slider
                      return CupertinoButton(
                        onPressed: () async => await controller.moveTo?.call(index),
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 200,
                              height: 262,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(images[index]),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withOpacity(1.0),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              left: 8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 8),
                                    child: RotatedBox(
                                      quarterTurns: 3,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Discount up to 10%',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: 'PPTelegraph',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8), // Add SizedBox to create spacing
                                  Text(
                                    '\$102',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'PPTelegraph',
                                    ),
                                  ),
                                  Text(
                                    "Woman's casual",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'PPTelegraph',
                                    ),
                                  ),
                                  Text(
                                    'wear',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'PPTelegraph',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'POPULAR CATEGORY',
                        style: TextStyle(
                          fontFamily: 'PPTelegraph',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          size: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Row(

                  children: [
                    SizedBox(width: 15,),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/man.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(width: 15,),
                       Container(
                        child: Text(
                          'MAN',
                          style: TextStyle(
                            fontFamily: 'PPTelegraph',
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    SizedBox(width: 190.0),
                    Container(
                      child: Text(
                        '148',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Center(
                  child: Container(
                    width: 300,
                    height: 1,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 15,),

                Row(
                  children: [
                    SizedBox(width: 15,),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/woman.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(width: 15,),
                    Container(
                      child: Text(
                        'Woman',
                        style: TextStyle(
                          fontFamily: 'PPTelegraph',
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 170.0),
                    Container(
                      child: Text(
                        '234',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}