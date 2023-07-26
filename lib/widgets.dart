import 'package:flutter/material.dart';

class Classess extends StatelessWidget {
  late final String title;
  late final String teacher;
  late final String zoom;
  List<dynamic> myJson = [];

  Classess(this.title, this.teacher, this.zoom);

  Map<String, String> toMap() {
    return {
      'title': title,
      'teacher': teacher,
      'zoom': zoom,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(width: 20, color: Colors.transparent,),
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[100],
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 600,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    "https://marketplace.canva.com/EAETAUs3jxE/1/0/1600w/canva-chalkboard-classroom-banner-z7u1_YG6SwM.jpg"),
              ),
            ),
          ),
          Container(
            child: Text(title),
          ),
        ],
      ),
    );
  }
}