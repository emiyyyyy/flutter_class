import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/authentication.dart';
import 'package:flutter_class/welcome.dart';
import 'package:flutter_class/widgets.dart';

class Anounce extends StatefulWidget {

  @override
  State<Anounce> createState() => AnounceState();

}

class AnounceState extends State<Anounce> {
  List<String> categories = ["Nonprofit Classes", "Art Class", "English Class", "Math Class", "Computer Science Class"];
  List<Widget> classes = [Anouncement("title", "date", "description")];
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();


  // void refreshClasses() {
  //   db.collection("users.Students").doc(AuthenticationHelper().uid).get().then((value) {
  //     var x = value.data();
  //
  //   });
  //   db.collection("users.Students").doc(AuthenticationHelper().uid).collection("classes").get().then((querySnapshot) {
  //
  //     List<Classess> tmpClasses = [];
  //
  //     for (var i in querySnapshot.docs) {
  //       setState( () => tmpClasses.add(Classess(
  //           i.id.toString(),
  //           i.data()["TeacherName"].toString(),
  //           i.data()["Zoom Link"].toString(),
  //           i.data()["image"].toString()
  //       )));
  //     }
  //     classes = tmpClasses;
  //   });
  //
  //
  //
  //   // db.collection("users").doc(AuthenticationHelper().uid).collection("classes").get().then((value) {
  //   //   var i = value.data()?["classes"];
  //   //   List<Classess> tmpClasses = [];
  //   //   for (var entry in i.entries) {
  //   //     print(entry);
  //   //
  //   //     setState( () => tmpClasses.add(Classess(
  //   //       entry.key.toString(),
  //   //       entry.value["TeacherName"].toString(),
  //   //       entry.value["Zoom Link"].toString(),
  //   //     )));
  //   //
  //   // }    classes = tmpClasses;});
  //
  //
  // }




  void _incrementCounter() {
    setState(() {
      final Map<String, Object> newMap = {
        "TeacherName": "emily",
        "Zoom Link": "1234",
      };
      final Map<String, Object> classMap = {
        "TeacherName": "Jack Wagner",
        "Zoom Link": "1234",
      };
      db.collection("users").doc(AuthenticationHelper().uid).collection("classes").doc("alegbra").set(classMap);




    });
  }

  @override
  Widget build(BuildContext context) {
    // refreshClasses();
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 600,
              width: 300,
              child: ListView(
                children: classes,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[100],
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        )
    );
  }
}
