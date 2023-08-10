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
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
                child: Text("Trial Class",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Metropolis",
                    ),
                ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("5 Classes",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("10 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("15 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("20 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("25 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("30 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("35 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("40 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("45 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.blue[100],
              ),
              child: Text("50 Class",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Metropolis",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
