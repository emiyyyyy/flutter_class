import 'package:flutter/material.dart';
import 'package:flutter_class/account.dart';
import 'package:flutter_class/class.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_class/recruit.dart';
import 'authentication.dart';
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
  late final String name;
  late final String imageURL;
  late final String age;

  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();

  late final String teacher;
  TeacherProfileState(this.teacher) {
    db.collection("users.Teachers").doc(teacher).get().then((value) {
      print(value.data());
      name = value.data()?["name"];
      imageURL = value.data()?["image"];
    });
  }

  void refreshTeachers() {



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
                child: Image.network("https://cdn.discordapp.com/attachments/1070956419949535272/1134368270301016064/istockphoto-75940775-612x612.jpg", width: 300, height: 300,),
                  ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Sign Up"))
          ],
        ),
          ),
    );
  }
}