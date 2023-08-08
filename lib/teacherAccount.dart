import 'package:flutter/material.dart';
import 'package:flutter_class/account.dart';
import 'package:flutter_class/class.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_class/recruit.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'welcome.dart';


class TeacherProfile extends StatefulWidget {

  // const MyHomePage({super.key, required this.title});
  late final String UID;
  final Object teacher;
  TeacherProfile(this.teacher);
  @override
  State<TeacherProfile> createState() => TeacherProfileState(teacher);
}

class TeacherProfileState extends State<TeacherProfile> {
  List<String> titles = ["Class", "News", "Home", "Account", "Recruit", "Settings"];


  Object teacher;
  TeacherProfileState(this.teacher) {

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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: Colors.blue[100],
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            label: titles[0],
            backgroundColor: Colors.blue[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: titles[1],
            backgroundColor: Colors.blue[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: titles[2],
            backgroundColor: Colors.blue[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: titles[3],
            backgroundColor: Colors.blue[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: titles[4],
            backgroundColor: Colors.blue[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: titles[5],
            backgroundColor: Colors.blue[100],
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}