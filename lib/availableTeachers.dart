import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/teacherAccount.dart';

import 'authentication.dart';

class availableTeachers extends StatefulWidget {
  late final String courseName;
  availableTeachers(this.courseName);
  @override
  State<availableTeachers> createState() => availableTeachersState(courseName);
}


class availableTeachersState extends State<availableTeachers> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  List<String> candidates = [];
  late final String courseName;

  List<String> teacherImages = [
    "https://cdn.discordapp.com/attachments/1070956419949535272/1134368270301016064/istockphoto-75940775-612x612.jpg",
    "https://cdn.discordapp.com/attachments/1070956419949535272/1134368270301016064/istockphoto-75940775-612x612.jpg",
    "https://cdn.discordapp.com/attachments/1070956419949535272/1134368270301016064/istockphoto-75940775-612x612.jpg"
  ];

  availableTeachersState(this.courseName);


  void refreshTeachers() {
    db.collection("Courses").doc(courseName).get().then((value) {
      List<String> tmpNames = [];
      List<String> tmpImg = [];
      Map<String, dynamic> data = value.data() as Map<String, dynamic>;
      for (var i in data.keys) {
        db.collection("users.Teachers").doc(i).get().then((value) {
          print(value.data());
        });
      }





      //teacherImages = tmpImg;
    });
  }

  _RecruitPageState() {


  }



  @override
  Widget build(BuildContext context) {
    refreshTeachers();
    return Scaffold(
      body: ListView.builder(
        itemCount: candidates.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(candidates[index][0]),
            ),
            title: Text(candidates[index]),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherProfile(teacherImages[index]),
                  ));
            },
          );
        },
      ),
    );
  }
}
