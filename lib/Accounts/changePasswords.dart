import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class/Accounts/authentication.dart';
import 'package:flutter_class/Teachers/questionare.dart';
import 'package:flutter_class/welcome.dart';
import 'package:flutter_class/widgets.dart';

class changePassword extends StatelessWidget {
  late final String classID;
  FirebaseFirestore db = FirebaseFirestore.instance;
  AuthenticationHelper Auth = AuthenticationHelper();
  bool mat = false;
  List<bool> _selectedOptions = [false, false, false]; // Modify this based on your questions
  String Title = "";
  String Description = "";
  String Date = "";
  Character character;
  String currentAccount = "users.Students";


  changePassword(this.character){
    if (character.toString() == "Character.student") {
      currentAccount = "users.Students";
    }
    else if (character.toString() == "Character.teacher") {
      print("ello");
      currentAccount = "users.Teachers";
    }
    else if (character.toString() == "Character.parent") {
      currentAccount = "users.parent";

    }
    else if (character.toString() == "Character.guest"){
      currentAccount = "users.guest";

    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 16),

            Text(
              'Change Password',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              onChanged: (String value) {
                Title = value;
              },
            ),
            SizedBox(height: 16),


            Text(
              'Confirm Password',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              onChanged: (String value) {
                Title = value;
              },
            ),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  //CHECK FOR PASSWORDS BEING THE SAME
                  //use video
                  //https://www.youtube.com/watch?v=JkQJQt_pQho&embeds_referring_euri=https%3A%2F%2Fwww.google.com%2F&source_ve_path=MjM4NTE&feature=emb_title

                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
