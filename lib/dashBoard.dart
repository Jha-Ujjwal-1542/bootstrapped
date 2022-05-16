import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Dash Board'),
      ),
      body: new Center(
        child: new Text("This is the Dashborad"),
      ),
    );
  }
}