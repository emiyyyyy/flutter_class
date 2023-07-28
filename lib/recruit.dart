import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'authentication.dart';

class RecruitPage extends StatefulWidget {

  @override
  State<RecruitPage> createState() => _RecruitPageState();
}

class _RecruitPageState extends State<RecruitPage> {
  List<String> categories = ["Nonprofit Classes", "Art Class", "English Class", "Math Class", "Computer Science Class"];
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address'),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(labelText: 'Resume/CV'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Implement form submission logic here
                },
                child: Text('Submit'),
              ),
            ],
          ),
        )
    );
  }
}
