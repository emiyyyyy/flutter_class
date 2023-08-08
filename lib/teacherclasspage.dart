import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/authentication.dart';
import 'package:flutter_class/questionare.dart';
import 'package:flutter_class/welcome.dart';
import 'package:flutter_class/widgets.dart';

class Tcp extends StatefulWidget {

  late final String classID;
  Tcp(this.classID);
  @override
  State<Tcp> createState() => TcpState(classID);

}

class TcpState extends State<Tcp> with SingleTickerProviderStateMixin{
  List<Widget> homework = [Homework("title", "description", "date")];
  List<Widget> classmaterials = [ClassMaterial("title", "description", "file")];
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  late TabController _tabController;
  String classID = "";
  TcpState(this.classID);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void refreshDeliverables() {

    setState(() {
      List<Homework> tmpHW = [];
      List<ClassMaterial> tmpMats = [];
      db.collection("classes").doc(this.classID).collection("HW").get().then((value) {
        for (var x in value.docs){
          print(x.data());
          tmpHW.add(
              Homework(x.data()!["title"], x.data()!["description"], x.data()!["date"])
          );
        }
      });

      db.collection("classes").doc(this.classID).collection("CM").get().then((value) {
        for (var x in value.docs){
          tmpMats.add(
              ClassMaterial(x.data()!["title"], x.data()!["description"], x.data()!["file"])
          );
        }
      });

      homework = tmpHW;
      classmaterials = tmpMats;
    });


  }
  void addDeliverables() {

    setState(() {
      final Map<String, Object> newMap = {
        "TeacherName": "emily",
        "Zoom Link": "1234",
      };
      final Map<String, Object> classMap = {
        "TeacherName": "Jack Wagner",
        "Zoom Link": "1234",
      };
      db.collection("classes").doc(this.classID).collection("HW").doc("alegbra").set(classMap);




    });
  }

  @override
  Widget build(BuildContext context) {
    refreshDeliverables();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        toolbarHeight: 30,
        bottom: TabBar(
          controller: _tabController, // Assign the TabController
          indicatorColor: Colors.white,
          labelStyle: TextStyle(fontFamily: "Metropolis", fontSize: 17),
          tabs: [
            Tab(text: 'Homework'),
            Tab(text: 'Class Material',),
            Tab(text: 'Students',),
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController, // Assign the TabController
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 600,
                  width: 300,
                  child: ListView(
                    children: homework,
                  ),
                ),
              ],
            ),
            // Widgets for Tab 1
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 600,
                  width: 300,
                  child: ListView(
                    children: classmaterials,
                  ),
                )
              ],
            ),
            // Widgets for Tab 2
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 600,
                  width: 300,
                  child: ListView(
                    children: classmaterials,
                  ),
                )
              ],
            ),
          ]
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[100],
          onPressed: () {
            setState(() {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Questionnaire'),
                    content: QuestionnaireForm(this.classID), // Display the form here
                  );
                },
              );
            });

          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        )
    );
  }
}
