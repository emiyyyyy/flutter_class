import 'package:flutter/material.dart';
import 'package:flutter_class/account.dart';
import 'package:flutter_class/class.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_class/recruit.dart';
import 'authentication.dart';
import 'buyclass.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'welcome.dart';


class TeacherProfile extends StatefulWidget {

  // const MyHomePage({super.key, required this.title});
  late final String UID;
  TeacherProfile(this.UID);
  @override
  State<TeacherProfile> createState() => TeacherProfileState(UID);
}

class TeacherProfileState extends State<TeacherProfile> {
  String name = "";
  String imageURL = "";
  String age = "";
  String skills = "";
  String classes = "";
  String Experience = "";
  String currentTeachingClasses = "";
  String college = "";
  String major = "";

  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();

  late final String teacher;
  TeacherProfileState(this.teacher) {
    refreshTeachers();
  }

  void refreshTeachers() {

    db.collection("users.Teachers").doc(teacher).get().then((value) {
      String tmp = "";
      print(value.data());
      tmp = value.data()?["Teachers"]["name"];
      name = tmp;
      tmp = value.data()?["Teachers"]["age"];
      age = tmp;
      imageURL = value.data()?["Teachers"]["image"];
      Experience = value.data()?["Teachers"]["experience"];
      college = value.data()?["Teachers"]["college"];
      currentTeachingClasses = value.data()?["Teachers"]["currentClasses"];
      major = value.data()?["Teachers"]["major"];
      skills = value.data()?["Teachers"]["skills"];
      classes = value.data()?["Teachers"]["classes"];
    });
    print("hello");
    print(name + age + imageURL + Experience + college + currentTeachingClasses + major + skills + classes);

  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    //
  }


  @override
  Widget build(BuildContext context) {
    refreshTeachers();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Image.asset(
          "assets/logo.PNG",
          width: 55,
        ),
        centerTitle: true,
       // automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 600,
                child: Image.network(imageURL, width: 300, height: 300,),
                  ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Settingbody()));

            }, child: Text("Hire Me"))
          ],
        ),
          ),
    );
  }
}