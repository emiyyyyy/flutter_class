import 'package:flutter/material.dart';

class Settingbody extends StatefulWidget {

  @override
  State<Settingbody> createState() => _SettingbodyState();
}

class _SettingbodyState extends State<Settingbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
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
          ],
        ),
    );
  }
}
