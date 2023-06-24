import 'package:flutter/material.dart';

import 'homePage.dart';


class ManPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            height: kToolbarHeight,
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 22 ,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
                SizedBox(width: 80.0),
                Text(
                  "DETAIL",
                  style: TextStyle(
                    fontFamily: 'PPTelegraph',
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Favori ikonuna tıklama işlemleri
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 360,
            color: Colors.black,
            child: Center(
              child: Text(
                'Discount up to 10%   Discount up to 10%',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'PPTelegraph',
                ),
              ),
            ),
          ),
          Container(
            height: 320,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/all.jpg'),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(1.0),
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 68,
                        height: 74,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              blurRadius: 8,
                              offset: Offset(0, -4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/all.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 68,
                        height: 74,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              blurRadius: 8,
                              offset: Offset(0, -4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/all.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 68,
                        height: 74,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              blurRadius: 8,
                              offset: Offset(0, -4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/all.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 68,
                        height: 74,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              blurRadius: 8,
                              offset: Offset(0, -4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/all.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Women's casual wear",
                  style: TextStyle(
                    fontFamily: 'PPTelegraph',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:15),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Price: ",
                  style: TextStyle(
                    fontFamily: 'PPTelegraph',
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              Text(
                "\$102",
                style: TextStyle(
                  fontFamily: 'PPTelegraph',
                  fontSize: 28.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),

          Row(
            children: [
              SizedBox(width: 15,),
              Text(
                "Size",
                style: TextStyle(
                  fontFamily: 'PPTelegraph',
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 30.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "XS",
                    style: TextStyle(
                      fontFamily: 'PPTelegraph',
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "S",
                    style: TextStyle(
                      fontFamily: 'PPTelegraph',
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "M",
                    style: TextStyle(
                      fontFamily: 'PPTelegraph',
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "L",
                    style: TextStyle(
                      fontFamily: 'PPTelegraph',
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "XL",
                    style: TextStyle(
                      fontFamily: 'PPTelegraph',
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),

          Row(
            children: [
              SizedBox(width: 15,),
              Text(
                "Color",
                style: TextStyle(
                  fontFamily: 'PPTelegraph',
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 25.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown[400],
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown[300],
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown[200],
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          ElevatedButton(
            onPressed: () {
              // Butona tıklandığında yapılacak işlemler
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                StadiumBorder(),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              minimumSize: MaterialStateProperty.all<Size>(Size(325, 53 )),
            ),
            child: Text(
              "BUY NOW",
              style: TextStyle(
                fontFamily: 'PPTelegraph',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
