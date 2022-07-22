import 'package:bootstrapped/views/menu_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class investor_profile extends StatelessWidget {
  const investor_profile({Key? key}) : super(key: key);

  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuPage(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[buildTop(), buildContent()],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
        ),
        Positioned(
          top: 10,
          right: 30,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
      );

  Widget buildContent() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            //Header
            Text(
              'Antarprerana',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Kathmandu',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            //About
            Text(
              'About',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Antarprerana is a private company, established in the year 2015, which supports entrepreneurs in Nepal through investments and mentorships.',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            SizedBox(height: 16),
            //Max investment
            Text(
              'Maximum investment: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 75,000/-',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            SizedBox(height: 16),
            //Min investment
            Text(
              'Minimum investment:',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 25,000/-',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            SizedBox(height: 16),
            //Portfolio
            Text(
              'Portfolio: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 75,000/-',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            SizedBox(height: 16),
            //Location
            Text(
              'Location',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Kathmandu',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            //Interest
            Text(
              'Interest',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'EV segment automobiles',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            SizedBox(height: 16),
            //Industries
            Text(
              'Industries',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'IT, Automobile, FinTech, AI, ML',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            //Type
            Text(
              'Type',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Angel Investor',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
          ],
        ),
      );
}
