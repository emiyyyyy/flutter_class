import 'package:flutter/material.dart';
import 'package:flutter_class/widgets.dart';

class Classbody extends StatefulWidget {

  @override
  State<Classbody> createState() => _ClassbodyState();
}

class _ClassbodyState extends State<Classbody> {
  List<String> categories = ["Nonprofit Classes", "Art Class", "English Class", "Math Class", "Computer Science Class"];
  List<Widget> classes = [Classess("fluttah", "jack", "leeknow")];
  void _incrementCounter() {
    setState(() {
      classes.add(Classess(
          "Note1",
          "Json1",
          "link1"));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 600,
            width: 300,
            child: ListView(
            children: classes,
           ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[100],
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
    );
  }
  }
