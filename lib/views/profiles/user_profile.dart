import 'package:flutter/material.dart';

// ignore: camel_case_types
class user_profile extends StatelessWidget {
  const user_profile({Key? key}) : super(key: key);

  final double coverHeight = 300;
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
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
        ),
        Positioned(
          top: 10,
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
            Text(
              'Name',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Ujjwal Jha',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
            Divider(),
            //Mobile
            SizedBox(height: 16),
            Text(
              'Mobile Number: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              '9841497247',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Address
            SizedBox(height: 16),
            Text(
              'Address: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Hattiban',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Country_code
            SizedBox(height: 16),
            Text(
              'Country Code: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              '977',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            //Email
            SizedBox(height: 16),
            Text(
              'Email: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'ujjwal.jha@gmail.com',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
            //Password
            Text(
              'Password: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              '*****',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
            //Type
            Text(
              'User Type',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Founder',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            SizedBox(height: 16),
            //Created At
            SizedBox(height: 16),
            Text(
              'Created Date: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              '2022/20/07',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
          ],
        ),
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(child: Icon(icon, size: 32)),
          ),
        ),
      );
}
