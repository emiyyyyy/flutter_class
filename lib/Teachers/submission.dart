import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/Accounts/authentication.dart';
import 'package:flutter_class/welcome.dart';
import 'package:flutter_class/widgets.dart';

class Submission extends StatefulWidget {
  String currentAccount = "users.Students";
  String classID = "";
  String title = "";



  Submission(this.classID, this.title);
  @override
  State<Submission> createState() => SubmissionState(this.classID, this.title);

}

class SubmissionState extends State<Submission> {
  List<String> categories = ["Nonprofit Classes", "Art Class", "English Class", "Math Class", "Computer Science Class"];
  List<Widget> Submissions = [];
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  late final Character character;
  String currentAccount = "users.Teachers";
  String classID = "";
  String title = "";



  SubmissionState(this.classID, this.title){

    refreshClasses();

  }

  void refreshClasses() {
    print(title);

    db.collection("classes").doc(this.classID).collection("HW").doc(title).collection("submissions").get().then((value) {
      for (var x in value.docs){
        print(x);
        Submissions.add(StudentSubmission(x.data().keys.first, x.data()?[x.data().keys.first]));
      }
    });


  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 600,
            width: 300,
            child: ListView(
              children: Submissions,
            ),
          )
        ],
      ),
    );
  }
}
