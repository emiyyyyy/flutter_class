import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/authentication.dart';
import 'package:flutter_class/welcome.dart';
import 'package:flutter_class/widgets.dart';

class Scp extends StatefulWidget {

  @override
  State<Scp> createState() => ScpState();

}

class ScpState extends State<Scp> with SingleTickerProviderStateMixin{
  List<Widget> homework = [Homework("title", "description", "date")];
  List<Widget> classmaterials = [ClassMaterial("title", "description", "file")];
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
            ],
          ),
        ),
      body: TabBarView(
        controller: _tabController, // Assign the TabController
        children: [
          // Widgets for Tab 1
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 600,
                  width: 300,
                  child: ListView(
                    children: homework,
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
    );
  }
}
