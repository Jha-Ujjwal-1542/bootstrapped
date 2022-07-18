// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dash Board'),
      ),
      body: Center(
        child: Text("This is the Dashborad"),
      ),
    );
  }
}
