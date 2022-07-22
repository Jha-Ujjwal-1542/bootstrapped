// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:bootstrapped/views/loginreg/user_registration.dart';
import 'package:bootstrapped/views/matched.dart';
import 'package:bootstrapped/views/menu_page.dart';
import 'package:bootstrapped/views/swipe_startups.dart';
// import 'package:bootstrapped/views/dash_board.dart';
import 'package:bootstrapped/views/settings_page.dart';
import 'package:bootstrapped/views/loginreg/login_page.dart';
import 'package:bootstrapped/views/swipe.dart';
import 'package:bootstrapped/views/profiles/founders_profile.dart';
import 'package:bootstrapped/views/profiles/investor_profile.dart';
import 'package:bootstrapped/views/profiles/startup_profile.dart';
import 'package:bootstrapped/views/profiles/user_profile.dart';

//Routes names
const String dashboard = '/dashboard';
// const String homepage = '/homepage';
const String settingspage = '/settings';
const String loginpage = '/login';
const String registerpage = '/register';
const String invreg = '/invreg';
const String swipes = '/swipe';
const String founders = '/founders';
const String investors = '/investors';
const String startups = '/startups';
const String users = '/users';
const String match = '/matched';
const String menu = '/menu';
const String swipestartup = '/swipestartup';

//controller for routes
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case swipes:
      return MaterialPageRoute(builder: (_) => swipePages());
    case settingspage:
      return MaterialPageRoute(builder: (_) => SettingPage());
    case loginpage:
      return MaterialPageRoute(builder: (_) => LoginPage());
    case founders:
      return MaterialPageRoute(builder: (_) => founder_profile());
    case investors:
      return MaterialPageRoute(builder: (_) => investor_profile());
    case startups:
      return MaterialPageRoute(builder: (_) => startup_profile_page());
    case users:
      return MaterialPageRoute(builder: (_) => user_profile());
    case match:
      return MaterialPageRoute(builder: (_) => Matched());
    case menu:
      return MaterialPageRoute(builder: (_) => MenuPage());
    case registerpage:
      return MaterialPageRoute(builder: (_) => Investor_Registration());
    case swipestartup:
      return MaterialPageRoute(builder: (_) => swipeStartups());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(child: Text('No route found')),
              ));
  }
}
