import 'package:flutter/material.dart';

class Settingbody extends StatefulWidget {

  @override
  State<Settingbody> createState() => _SettingbodyState();
}
class _SettingbodyState extends State<Settingbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.asset("t&c1.png"),
            Image.asset("t&c2.jpeg"),
            Text("Contact me to purchase classes and for more information on the prices"),
          ],
        ),
      ),
    );
  }
}
