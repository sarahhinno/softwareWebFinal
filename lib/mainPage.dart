import 'dart:io';

import 'package:flutter/material.dart';
import 'package:software/adminPages/DetailsPageOfEmployee.dart';
import 'package:software/auuth/login.dart';
import 'package:software/auuth/signup.dart';
import 'package:software/components/rounded_button.dart';
import 'package:software/theme.dart';
import 'package:url_launcher/url_launcher.dart';

// Import the file where SpDetailsPage is defined

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  void launchURL() async {
    const url =
        'https://www.google.com/maps/dir/32.2174976,35.30752//@32.2174783,35.3775602,12z/data=!4m4!4m3!1m1!4e1!1m0?entry=ttu';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchURLF() async {
    const url = 'https://www.facebook.com/sanad.societypal';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // scrollDirection: Axis.vertical,
          child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 65,
            color: primaryColor,
            child: Row(
              children: <Widget>[
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Login();
                      }));
                    },
                    child: Text(
                      " تـسـجـيـل الـدخـول",
                      style: TextStyle(
                          fontFamily: 'myFont',
                          fontSize: 18,
                          color: primaryLightColor,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(width: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return signup();
                      }));
                    },
                    child: Text(
                      "  إنـشـاء حـسـاب",
                      style: TextStyle(
                          fontFamily: 'myFont',
                          fontSize: 18,
                          color: primaryLightColor,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(width: 20),
              ],
            ),
          ),
          Container(
            height: 630,
            width: double.infinity,
            color: Color(0xffE8DFFB),
            child: Stack(
              children: <Widget>[
                // Background Image
                Positioned.fill(
                  child: Image.asset(
                    "images/mainPageWelcome.png",
                    fit: BoxFit
                        .cover, // Adjust this property based on your requirement
                  ),
                ),
                // Text on the right side

                Container(
                  // width: 400,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(850, 50, 15, 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'جـمـعـيـة سـنـد تـعـنـى بـتـنـفـيـذ الأنـشــطة عـلـى مـسـتـوويـيـن',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              color: Color(0xff545454),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              '  الـمـسـتـوى الأول : خـدمـاتـي تـأهـيـلـي',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff545454),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.exposure_minus_1_sharp, weight: 10),
                            //   Spacer(),
                          ]),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              ' الـعـلاج الـوظـيـفـي',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff373634),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_left, weight: 10),
                          ]),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              'الـعـلاج الـنـفـسـي',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff373634),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_left, weight: 10),
                          ]),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              'عـلاج الـنـطـق والـلـغـة',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff373634),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_left, weight: 10),
                          ]),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              'الـتـفـريـغ بالـفـن',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff373634),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_left, weight: 10),
                          ]),
                          SizedBox(height: 30),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              ' الـمـسـتـوى الثـانـي :  نـشـاطـات مـجـتـمـعـيـة تـوعـويـة وبـنـاء الـقـدرات',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff545454),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.exposure_minus_2_sharp, weight: 10),
                            //   Spacer(),
                          ]),
                          SizedBox(height: 5),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              'تـنـفـيـذ ورشـات تـوعـية للأمـهـات, والـطـلاب , والـمـتـطـوعـين , والـخـريـجـين , ومـدـرسـات ريـاض الأطـفـال',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff373634),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.end,
                            ),
                            Icon(Icons.arrow_left, weight: 10),
                          ]),
                          SizedBox(height: 5),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              'تـوجـيـه الـحـمـلات الـمـنـاصـرة لـتـايـيـد حـقـوق ذوي الإعـاقـة',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff373634),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.end,
                            ),
                            Icon(Icons.arrow_left, weight: 10),
                          ]),
                          SizedBox(height: 5),
                          Row(children: <Widget>[
                            Spacer(),
                            Text(
                              'الـتنـسـيـق والـتـشـبـيـك مـع الـمؤسـسـات الـمـخـتـصة بـنـفـس الـمـجـال لـدعـم قـضـايـا وحـقـوق ذوي الإعـاقـة',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff373634),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.end,
                            ),
                            Icon(Icons.arrow_left, weight: 10),
                          ]),
                        ],
                      )),
                ),
              ],
            ),
          ),

          // SizedBox(height: 20),
          Container(
            color: Color.fromARGB(255, 205, 195, 228),
            width: double.infinity,
            height: 50,
            child: Row(
              children: <Widget>[
                Spacer(),
                GestureDetector(
                  onTap: launchURL,
                  child: Card(
                    color: Color(0xffE8DFFB),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'نابلس - رفيديا - شارع تونس -خلف مطعم كوينز ',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontFamily: 'myfont',
                              fontSize: 15),
                        ),
                        Icon(
                          Icons.add_location,
                          color: Colors.grey[800],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Card(
                  color: Color(0xffE8DFFB),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '0595 883 338',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontFamily: 'myfont',
                            fontSize: 15),
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.grey[800],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Card(
                  color: Color(0xffE8DFFB),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'sanad_society@yahoo.com',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontFamily: 'myfont',
                            fontSize: 15),
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.grey[800],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: launchURLF,
                  child: Card(
                    color: Color(0xffE8DFFB),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontFamily: 'myfont',
                              fontSize: 15),
                        ),
                        Icon(
                          Icons.facebook,
                          color: Colors.grey[800],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
