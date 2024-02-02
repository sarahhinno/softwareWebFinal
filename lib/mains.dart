import 'package:flutter/material.dart';
import 'package:software/adminPages/DetailsPageOfChildren.dart';
import 'package:software/adminPages/DetailsPageOfEmployee.dart';
import 'package:software/adminPages/addNewChild.dart';
import 'package:software/adminPages/addNewSpecialest.dart';
import 'package:software/adminPages/adminHomePage.dart';
import 'package:software/adminPages/chart1.dart';
import 'package:software/adminPages/chart3.dart';
import 'package:software/adminPages/dailyScheduale.dart';
import 'package:software/adminPages/report.dart';
import 'package:software/adminPages/showAllChildren.dart';
import 'package:software/adminPages/showAllEmployee.dart';
import 'package:software/adminPages/viewemployeeToChat.dart';
import 'package:software/auuth/login.dart';
import 'package:software/auuth/signup.dart';
import 'package:software/parentPages/ChildrenPersInfo.dart';
import 'package:software/parentPages/completeChildProfile.dart';
import 'package:software/parentPages/homePageParent.dart';
import 'package:software/parentPages/parentsDrawer.dart';
import 'package:software/parentPages/specialistEvaluation.dart';
import 'package:software/specialestPages/childDetailesforSP.dart';
import 'package:software/specialestPages/completeChildProfile.dart';
import 'package:software/specialestPages/empPersonalInformation.dart';
import 'package:software/specialestPages/empVications.dart';
import 'package:software/specialestPages/homeDrawe.dart';
import 'package:software/specialestPages/homePage.dart';
import 'package:software/specialestPages/objectives.dart';
import 'package:software/specialestPages/otherSPNotes.dart';
import 'package:software/specialestPages/sessionNotes.dart';
import 'package:software/specialestPages/viewChildren.dart';
import 'package:software/specialestPages/viewPosts.dart';

// Import the file where SpDetailsPage is defined

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late String id;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return newChild();
                  }));
                },
                child: Text('add new child'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return newSpecialest();
                  }));
                },
                child: Text('add new sp'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewSpecialest();
                  }));
                },
                child: Text('viewSpecialest'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewChildren();
                  }));
                },
                child: Text('viewChildren'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return edit();
                  }));
                },
                child: Text('edit'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return goals(
                      childId: '',
                      spId: '',
                    );
                  }));
                },
                child: Text('goals'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailsPage(
                      name: '1234567890',
                    );
                  }));
                },
                child: Text('DetailsOfChild'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return signup();
                  }));
                },
                child: Text('signup'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                },
                child: Text('Login'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return chartOne();
                  }));
                },
                child: Text('chartOne'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return chartThree();
                  }));
                },
                child: Text('chartThree'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return report();
                  }));
                },
                child: Text('report'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return spEvaluation();
                  }));
                },
                child: Text('spEvaluation'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return profile(
                      id: '987654321',
                    );
                  }));
                },
                child: Text('profile'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return profileChild(
                      id: '987654321',
                    );
                  }));
                },
                child: Text('profileChild '),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return vications(
                      id: '987654321',
                    );
                  }));
                },
                child: Text('vications'),
              ),
              SizedBox(height: 20),
              //sessionNotesState
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return spHomePage(
                      id: '987654321',
                      name: 'سارة',
                    );
                  }));
                },
                child: Text('spHomePage'),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return spHomeDrawer(id: '987654321');
                  }));
                },
                child: Text('spHomeDrawer'),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return adminHomePage();
                  }));
                },
                child: Text('adminHomePage'),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return parentHomeDrawer(
                      id: '123456789',
                    );
                  }));
                },
                child: Text('parentHomeDrawer'),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return chat();
                  }));
                },
                child: Text('chat'),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewPosts();
                  }));
                },
                child: Text('viewPosts'),
              ),
              //viewPosts
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return myChildren(
                      id: '987654321',
                    );
                  }));
                },
                child: Text('myChildren'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return sessionNotes(id: '3', name: 'رنا دريني', session: 'سلوكي', date: DateTime.now(), index: 0,);
                  }));
                },
                child: Text('sessionNotes'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return otherSpecialestNotes(
                      childID: '',
                      spName: '',
                      sesison: '',
                    );
                  }));
                },
                child: Text('otherSpecialestNotes'),
              ),
              SizedBox(height: 10),
              //otherSpecialestNotes

              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return otherSpecialestNotes(
              //         childID: '',
              //         spName: '',
              //         sesison: '',
              //       );
              //     }));
              //   },
              //   child: Text('otherSpecialestNotes'),
              // ),
            ],
          )),
    );
  }
}
//spHomePage