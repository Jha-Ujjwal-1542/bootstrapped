// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:bootstrapped/views/dash_board.dart';
import 'package:bootstrapped/views/settings_page.dart';
import 'package:bootstrapped/views/login_page.dart';
import 'package:bootstrapped/views/swipes.dart';

import '../views/register_alternative.dart';
// import 'package:bootstrapped/views/register_page.dart';

//Routes names
const String dashboard = '/dashboard';
const String homepage = '/homepage';
const String settingspage = '/settings';
const String loginpage = '/login';
const String registerpage = '/register';
const String swipes = '/swipe';

//controller for routes
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case dashboard:
      return MaterialPageRoute(builder: (_) => DashboardPage());
    case swipes:
      return MaterialPageRoute(builder: (_) => swipePages());
    case settingspage:
      return MaterialPageRoute(builder: (_) => SettingPage());
    case loginpage:
      return MaterialPageRoute(builder: (_) => LoginPage());
    case registerpage:
      return MaterialPageRoute(builder: (_) => RegisterPage());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(child: Text('No route found')),
              ));
  }
}
