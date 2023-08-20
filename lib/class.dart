import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/Accounts/authentication.dart';
import 'package:flutter_class/welcome.dart';
import 'package:flutter_class/widgets.dart';

class Classbody extends StatefulWidget {
  late final Character character;
  Classbody(this.character);
  @override
  State<Classbody> createState() => _ClassbodyState(character);

}

class _ClassbodyState extends State<Classbody> {
  List<String> categories = ["Nonprofit Classes", "Art Class", "English Class", "Math Class", "Computer Science Class"];
  List<Widget> classes = [];
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  late final Character character;
  String currentAccount = "users.Students";


  _ClassbodyState(this.character){
    if (character.toString() == "Character.student") {
      currentAccount = "users.Students";
    }
    else if (character.toString() == "Character.teacher") {
      currentAccount = "users.Teachers";
    }
    else if (character.toString() == "Character.parent") {
      currentAccount = "users.parent";

    }
    else if (character.toString() == "Character.guest"){
      currentAccount = "users.guest";

    }
  }


  void refreshClasses() {

    db.collection(currentAccount).doc(AuthenticationHelper().uid).collection("classes").get().then((querySnapshot) {
      List<Classess> tmpClasses = [];
      for (var i in querySnapshot.docs) {
        //i.id.toString() == the class id number
        db.collection("classes").doc(i.id.toString()).get().then((value) {
          setState( () => tmpClasses.add(Classess(
            character,
            i.id.toString(),
            value.data()!["name"].toString(),
            value.data()!["teacherName"].toString(),
            value.data()!["zoomLink"].toString(),
            value.data()!["image"].toString(),

          )));
        });
      }
      classes = tmpClasses;
    });

  }




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
    refreshClasses();
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
