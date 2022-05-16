import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: new AppBar(
        title: new Text('Settings Page'),
      ),
      body: new Center(
        child: new Text("This is the Settings page"),
      ),
    );
  }
}