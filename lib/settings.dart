import 'package:flutter/material.dart';
import 'package:flutter_class/widgets.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Sett extends StatefulWidget {

  @override
  State<Sett> createState() => SettState();
}

class SettState extends State<Sett> {
  void _incrementCounter() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8.0),
              color: Colors.blue[100],
              child: ListTile(
                title: Text("Emily Ma", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,),),
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider("http://via.placeholder.com/200x150")
                ),
                trailing: Icon(Icons.edit, color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}