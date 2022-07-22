// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'routes/routes.dart' as route;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootstrapped',
      onGenerateRoute: route.controller,
      initialRoute: route.registerpage,
      debugShowCheckedModeBanner: false,
    );
  }
}
