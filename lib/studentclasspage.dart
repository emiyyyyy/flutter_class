import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/authentication.dart';
import 'package:flutter_class/welcome.dart';
import 'package:flutter_class/widgets.dart';

class Scp extends StatefulWidget {
  late final String classID;

  Scp(this.classID);

  @override
  State<Scp> createState() => ScpState(classID);
}

class ScpState extends State<Scp> with SingleTickerProviderStateMixin {
  List<Widget> homework = [];
  List<Widget> classmaterials = [];
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  late TabController _tabController;
  String classID = "";

  ScpState(this.classID);

  void refreshDeliverables() {
    setState(() {
      List<Homework> tmpHW = [];
      List<ClassMaterial> tmpMats = [];
      db
          .collection("classes")
          .doc(this.classID)
          .collection("HW")
          .get()
          .then((value) {
        for (var x in value.docs) {
          tmpHW.add(Homework(
              x.data()!["title"], x.data()!["description"], x.data()!["date"]));
        }
      });

      db
          .collection("classes")
          .doc(this.classID)
          .collection("CM")
          .get()
          .then((value) {
        for (var x in value.docs) {
          tmpMats.add(ClassMaterial(
              x.data()!["title"], x.data()!["description"], x.data()!["file"]));
        }
      });

      homework = tmpHW;
      classmaterials = tmpMats;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> fetchData() async {
    // Replace 'collectionName' with your actual collection name
    DocumentSnapshot<Map<String, dynamic>> snapshot = (await db.collection(
        "classes").doc(this.classID)
        .collection("HW")
        .get()) as DocumentSnapshot<Map<String, dynamic>>;
    DocumentSnapshot<Map<String, dynamic>> snapshot2 = db
        .collection("classes")
        .doc(this.classID)
        .collection("CM")
        .get() as DocumentSnapshot<Map<String, dynamic>>;
    return snapshot;
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
      db
          .collection("users")
          .doc(AuthenticationHelper().uid)
          .collection("classes")
          .doc("alegbra")
          .set(classMap);
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
              Tab(
                text: 'Class Material',
              ),
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
            ])

    );
  }
}

/*
FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            future: fetchData(), // Call your fetchData function here
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                    child:
                        CircularProgressIndicator()); // Display a loading indicator while waiting for data
              } else if (snapshot.hasError) {
                return Center(
                    child: Text(
                        'Error fetching data')); // Display an error message if data fetching fails
              } else if (!snapshot.hasData) {
                return Center(
                    child: Text(
                        'No data available')); // Display a message if no data is available
              } else {
                // Build your UI using the fetched data
                // You can access the data using snapshot.data
                final data = snapshot.data!
                    .data(); // Extract the data from the DocumentSnapshot
                Map<String, dynamic> userData = data?["Teachers"];
 */
