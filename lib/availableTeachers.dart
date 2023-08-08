import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/teacherAccount.dart';

import 'authentication.dart';

class availableTeachers extends StatefulWidget {

  @override
  State<availableTeachers> createState() => availableTeachersState();
}


class availableTeachersState extends State<availableTeachers> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  List<String> candidates = [];
  List<String> teacherImages = [
    "https://cdn.discordapp.com/attachments/1070956419949535272/1134368270301016064/istockphoto-75940775-612x612.jpg",
    "https://cdn.discordapp.com/attachments/1070956419949535272/1134368270301016064/istockphoto-75940775-612x612.jpg",
    "https://cdn.discordapp.com/attachments/1070956419949535272/1134368270301016064/istockphoto-75940775-612x612.jpg"
  ];

  void refreshCandidates() {
    db.collection("users.Teachers").get().then((querySnapshot) {
      List<String> tmpNames = [];
      List<String> tmpImg = [];
      for (var i in querySnapshot.docs) {
        //   print(i.data());
        //   print(i.id);
        //    print("hello");
        setState(() {
          tmpNames.add(i.data()["Teachers"]["name"]);
          // tmpImg.add(i.data()["Teachers"]["image"]);
        });


      }
      candidates = tmpNames;
      //teacherImages = tmpImg;
    });
  }

  _RecruitPageState() {


  }



  @override
  Widget build(BuildContext context) {
    refreshCandidates();
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
