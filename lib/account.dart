import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/authentication.dart';
import 'package:flutter_class/welcome.dart';
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
            child: ListView(
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
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'johndoe@example.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Add navigation or actions here
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Change Password'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Add navigation or actions here
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications'),
                    trailing: Switch(
                      value: false, // Replace with your own logic to handle settings
                      onChanged: (value) {
                        // Implement logic to update notification settings
                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Language'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to language settings page
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text('Security'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to security settings page
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help & Support'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to help & support page
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About Us'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to about us page
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Log Out'),
                    onTap: () {
                      Auth.signOut();
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Kat(),
                          ));
                    },
                  ),
                ],
            ),
          ),
        );
  }
}


