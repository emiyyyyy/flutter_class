import 'package:flutter/material.dart';
import 'package:flutter_class/teacherAccount.dart';

class Classess extends StatelessWidget {
  late final String title;
  late final String teacher;
  late final String zoom;
  late final Object image;
  List<dynamic> myJson = [];

  Classess(this.title, this.teacher, this.zoom, this.image);

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
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TeacherProfile(image)));

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