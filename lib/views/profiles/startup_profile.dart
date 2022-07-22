import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: camel_case_types
class startup_profile_page extends StatelessWidget {
  const startup_profile_page({Key? key}) : super(key: key);

  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      alignment: Alignment.centerRight,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const NetworkImage(
            'https://d14u0p1qkech25.cloudfront.net/72355297_793919d1-5fbc-4673-9a54-0ea754479e6b_thumbnail_250x250'),
      );

  Widget buildContent() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Bijay Khadka',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'COO, Apex Solutions',
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
              'Once a hardcore programmer, now a self-taught CEO whose daily chores involves studying business processes.',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            SizedBox(height: 16),
            //Max investment
            SizedBox(height: 16),
            Text(
              'Maximum investment: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 75,000/-',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
            //Min investment
            SizedBox(height: 16),
            Text(
              'Minimum investment: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 25,000/-',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
            //Portfolio
            SizedBox(height: 16),
            Text(
              'Portfolio: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 75,000/-',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Reg_Date
            SizedBox(height: 16),
            Text(
              'Registration Date: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '2010/10/02',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Reg_No
            SizedBox(height: 16),
            Text(
              'Registration No.: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '023A3EXYC',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Capital
            SizedBox(height: 16),
            Text(
              'Capital: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 250,000/-',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Valuation
            SizedBox(height: 16),
            Text(
              'Valuation: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 10,000,000/-',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Offered Share
            SizedBox(height: 16),
            Text(
              'Offered Share: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NRs. 75,000/-',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Industry
            SizedBox(height: 16),
            Text(
              'Industry: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'IT',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //PAN
            SizedBox(height: 16),
            Text(
              'PAN: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '073110023',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Province
            SizedBox(height: 16),
            Text(
              'Province: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Bagmati',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Elevator_Pitch
            SizedBox(height: 16),
            Text(
              'Elevator Pitch: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'https://youtu.be/EU96s14zgLk',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );
}
