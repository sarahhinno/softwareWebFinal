import 'package:flutter/material.dart';
import 'package:software/adminPages/chat.dart';
import 'package:software/adminPages/dailyScheduale.dart';
import 'package:software/auuth/signup.dart';
import 'package:software/components/rounded_button.dart';
import 'package:software/auuth/login.dart';
import 'package:software/theme.dart';

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        // height: size.height,
        // width: size.width,
        child: Stack(children: [
          // Positioned(
          //   top: 0 ,
          //   left: 0,
          //   child: Image.asset("images/welcome_top_left.png")),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: Image.asset("images/welcome_bottom_right.png")),

          Center(
            // width: double.infinity,
            // height: size.height,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    "images/welcomePicture.png",
                    width: size.width * .2,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 400,
                    child: RoundedButton(
                      text: "تســجـيل الدخـول",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 400,
                    child: RoundedButton(
                      color: primaryLightColor,
                      textColor: Colors.black,
                      text: "إنـشـــاء حـســاب",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return signup();
                        }));
                      },
                    ),
                  ),
                   SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return dailySchedual();
                      }));
                    },
                    child: Text('admin Home'),
                  )
                ]),
          )
        ]),
      ),
    );
  }
}


