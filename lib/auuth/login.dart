// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:software/adminPages/addNewChild.dart';
import 'package:software/adminPages/calender.dart';
import 'package:software/adminPages/dailyScheduale.dart';
import 'package:software/auuth/signup.dart';
import 'package:software/adminPages/addNewSpecialest.dart';
import 'package:software/adminPages/adminHomePage.dart';
import 'package:software/components/rounded_button.dart';
import 'package:software/components/rounded_textField.dart';
import 'package:software/specialestPages/homeDrawe.dart';
import 'package:software/specialestPages/homePage.dart';
import 'package:software/specialestPages/homePage.dart';
import 'package:software/theme.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String result = "  ";
  // final auth=FirebaseAuth.instance;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  Future<void> loginfun() async {
    print("inside login func");
    if (emailController.text.isEmpty) {
      setState(() {
        result = "يـجــب تـعـبـئـة الإيـمـيـل";
        return;
      });
    } else if (passwordController.text.isEmpty) {
      setState(() {
        result = "يـجــب تـعـبـئـة كـلـمـة الــسـر";
        return;
      });
    } else {
      final response = await http.post(Uri.parse(ip + "/sanad/login"), body: {
        'email': emailController.text.trim(),
        'password': passwordController.text.trim()
      });
      if (response.statusCode == 200) {
        print("flutter loged in");
        print(response.body.toString());
       

        try {
          // final user = auth.signInWithEmailAndPassword(
          //     email: emailController.text, password: passwordController.text);
          if (emailController.text == 'marahh@gmail.com') {
          //  print(user);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return adminHomePage();
            }
            ));
            
          }
          else if(emailController.text == 'maraah@gmail.com'){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
              return spHomeDrawer(id: '987654321');
            }
            ));
          }
          
        } catch (e) {
          print(e);
        }
      } else {
        print("flutter nooooooooo");
        print(emailController.text);
        print(passwordController.text);
        var res = jsonDecode(response.body.toString());
        print(response.body.toString());
        print(res['massage']);

        setState(() {
          result = "الإيـميـل أو كـلمـة الـسـر خــاطـئـة";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Positioned(
              //     top: 0,
              //     right: 0,
              //     child: Image.asset(
              //       "images/login_top_right.png",
              //       width: size.width * 0.42,
              //     )),
              // Positioned(
              //     bottom: 0,
              //     left: 0,
              //     child: Image.asset(
              //       "images/login_bottom_left.png",
              //       width: size.width,
              //     )),
              Container(
                width: double.infinity,
                height: size.height,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "تـسـجـيـل الــدخــول",
                      style: TextStyle(
                          fontFamily: 'myFont',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                    Image.asset("images/down.png", width: size.width * 0.3),
                    Text(
                      result,
                      style: TextStyle(
                          fontFamily: 'myFont',
                          color: Colors.red,
                          fontSize: 18),
                    ),
                    Container(
                      width: 500,
                      child: RoundedTextField(
                          child: TextField(
                        textAlign: TextAlign.right,
                        controller: emailController,
                        onChanged: (value) {
                          setState(() {
                            result = " ";
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "الـبريد الالـكترونـي أو هـويـة الـطفـل",
                          hintStyle: TextStyle(fontFamily: 'myFont'),
                          suffixIcon: Icon(
                            Icons.person_2,
                            color: primaryColor,
                          ),
                          border: InputBorder.none,
                        ),
                      )),
                    ),
                    Container(
                      width: 500,
                      child: RoundedTextField(
                          child: TextField(
                        obscureText: _obscureText,
                        textAlign: TextAlign.right,
                        controller: passwordController,
                        onChanged: (value) {
                          setState(() {
                            result = " ";
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "كــلـمـة الــسـر",
                          hintStyle: TextStyle(
                            fontFamily: 'myFont',
                          ),
                          suffixIcon: Icon(
                            Icons.lock,
                            color: primaryColor,
                          ),
                          icon: Material(
                            type: MaterialType.transparency,
                            child: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(170, 10, 100, 10),
                      width: 600,
                      child: GestureDetector(
                        onTap: () {
                        //    Navigator.push(context, MaterialPageRoute(builder: (context){return calendar(text: '',);}));
                        },
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                "هـل نـســيـت كـلمـة الـسـر؟",
                                style: TextStyle(
                                    fontFamily: 'myFont',
                                    fontSize: 18,
                                    color: primaryColor,
                                    decoration: TextDecoration.underline),
                              )
                            ])),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 300,
                      child: RoundedButton(
                          text: "تـسـجـيـل الــدخــول",
                          press: () => {
                                loginfun(),

                                //  Navigator.push(context, MaterialPageRoute(builder: (context){return adminHomePage();}))
                              }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return signup();
                              }));
                            },
                            child: Text(
                              "أنـشـئ حـسـاب",
                              style: TextStyle(
                                  fontFamily: 'myFont',
                                  fontSize: 18,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            )),
                        Text("  لـيس لـديـك حـساب؟",
                            style: TextStyle(
                                fontFamily: 'myFont',
                                fontSize: 18,
                                color: primaryColor)),
                      ],
                    ),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) {
                    //         return dailySchedual();
                    //       }));
                    //     },
                    //     child: Text("ggg")),
                  ],
                )),
              )
            ],
          )),
    );
  }
}
