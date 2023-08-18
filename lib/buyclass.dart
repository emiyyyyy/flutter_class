import 'package:flutter/material.dart';

class Settingbody extends StatefulWidget {

  @override
  State<Settingbody> createState() => _SettingbodyState();
}
class _SettingbodyState extends State<Settingbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Image.asset(
          "assets/logo.PNG",
          width: 55,
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.network("https://cdn.discordapp.com/attachments/1135092374666760253/1141512845943648306/tc1.png"),
            Image.network("https://cdn.discordapp.com/attachments/1135092374666760253/1141512846488903751/tc2.png"),
            SizedBox(height: 20,),
            Text("Contact me to purchase classes and for more information on the prices, after you have bought the classes please make a parent account",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Metropolis",
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10,),
            Image.network("https://cdn.discordapp.com/attachments/1135092374666760253/1141512846795079710/wechatqr.png"),
          ],
        ),
      ),
    );
  }
}
