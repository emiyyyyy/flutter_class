import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/authentication.dart';
import 'package:flutter_class/widgets.dart';

class Accountbody extends StatefulWidget {

  @override
  State<Accountbody> createState() => _AccountbodyState();
}

class _AccountbodyState extends State<Accountbody> {
  List<String> categories = ["Nonprofit Classes", "Art Class", "English Class", "Math Class", "Computer Science Class"];
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();








  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.discordapp.com/attachments/1070956419949535272/1134368270301016064/istockphoto-75940775-612x612.jpg'),
                ),
                SizedBox(height: 20.0),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'johndoe@example.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  onTap: () {
                    // Add navigation or actions here
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('Change Password'),
                  onTap: () {
                    // Add navigation or actions here
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log Out'),
                  onTap: () {
                    // Add navigation or actions here
                  },
                ),
              ],
            ),
          ),
        );
  }
}


