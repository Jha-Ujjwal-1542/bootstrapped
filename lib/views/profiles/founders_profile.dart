import 'package:flutter/material.dart';

// ignore: camel_case_types
class founder_profile extends StatelessWidget {
  const founder_profile({Key? key}) : super(key: key);

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
        backgroundImage: const NetworkImage(
            'https://d14u0p1qkech25.cloudfront.net/72355297_793919d1-5fbc-4673-9a54-0ea754479e6b_thumbnail_250x250'),
      );

  Widget buildContent() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Kiran Timsina',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'UG Bazaar',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            //Bio
            Text(
              'Bio',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Once a hardcore programmer, then a social media junkie, now a self-taught systems designer and developer whose daily chores involves studying business processes to automate them and studying business problems to solve them through simple modular systems.',
              style: TextStyle(fontSize: 18, height: 1.7),
            ),
            SizedBox(height: 16),
            //DOB
            SizedBox(height: 16),
            Text(
              'DOB: ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '2034/10/12',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            SizedBox(height: 16),
            //CV
            SizedBox(height: 16),
            Text(
              'CV:',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'https://np.linkedin.com/in/timsinakiran',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
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
