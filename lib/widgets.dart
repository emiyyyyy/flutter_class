import 'package:flutter/material.dart';
import 'package:flutter_class/availableTeachers.dart';
import 'package:flutter_class/studentclasspage.dart';
import 'package:flutter_class/teacherAccount.dart';
import 'package:flutter_class/teacherclasspage.dart';
import 'package:flutter_class/welcome.dart';

class Classess extends StatelessWidget {
  late final String title;
  late final String teacher;
  late final String zoom;
  late final Object image;
  late final String classID;
  late final Character character;
  List<dynamic> myJson = [];

  Classess(this.character, this.classID, this.title, this.teacher, this.zoom, this.image);

  Map<String, String> toMap() {
    return {
      'title': title,
      'teacher': teacher,
      'zoom': zoom,
    };
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (character.toString() == "Character.student") {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Scp(this.classID)));
        }
        else if (character.toString() == "Character.teacher") {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tcp(this.classID)));

        }


      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent,),
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[100],
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 600,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Colors.transparent),
                ),

                //borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://marketplace.canva.com/EAETAUs3jxE/1/0/1600w/canva-chalkboard-classroom-banner-z7u1_YG6SwM.jpg"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text(title, style: TextStyle(
                  fontSize: 20
                ),),
                SizedBox(width: 100,),
                Text(teacher), SizedBox(width: 20,),

                  Text(zoom),
              ],)
            ),
          ],
        ),
      ),
    );
  }
}

class Homework extends StatelessWidget {
  late final String title;
  late final String description;
  late final String date;
  List<dynamic> myJson = [];

  Homework(this.title, this.description, this.date);

  Map<String, String> toMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
    };
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => Scp()));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent,),
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.check_circle, color: Colors.red, size: 30,),
                SizedBox(width: 10,),
                Text(title, style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Metropolis",
                ),),
              ],
            ),
            Divider(
                color: Colors.black,
              thickness: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(date,style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Merriweather",
                ),),
                Text(description,style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Merriweather",
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ClassMaterial extends StatelessWidget {
  late final String title;
  late final String description;
  late final String file;
  List<dynamic> myJson = [];

  ClassMaterial(this.title, this.description, this.file);

  Map<String, String> toMap() {
    return {
      'title': title,
      'description': description,
      'Attachment': file,
    };
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => Scp()));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent,),
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.check_circle, color: Colors.red, size: 30,),
                SizedBox(width: 10,),
                Text(title, style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Metropolis",
                ),),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(description,style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Merriweather",
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Anouncement extends StatelessWidget {
  late final String title;
  late final String description;
  late final String date;
  List<dynamic> myJson = [];

  Anouncement(this.title, this.description, this.date);

  Map<String, String> toMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
    };
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => Scp()));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent,),
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Metropolis",
                ),),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(date,style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Merriweather",
                ),),
                Text(description,style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Merriweather",
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Course extends StatelessWidget {
  late final String title;

  List<dynamic> myJson = [];

  Course(this.title);

  Map<String, String> toMap() {
    return {
      'title': title,
    };
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => availableTeachers(this.title)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent,),
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[100],
        ),
        child: Center(
          child: Text(title, style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: "Metropolis",
          ),),
        ),
      ),
    );
  }
}