import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: camel_case_types
class profile_page extends StatelessWidget {
  const profile_page({Key? key}) : super(key: key);
  
  final double coverHeight = 280;
  final double profileHeight = 144;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent()
        ],
      ),
    );
  }


  Widget buildTop() {
    
    final bottom = profileHeight / 2;
    final top = coverHeight -profileHeight / 2;
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(),
          ),
          Positioned(
            top: top,
            child: buildProfileImage(),
          ),
        ],
      );
  }

  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.network(
      'https://lovepik.com/image-401501715/splash.html',
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: const NetworkImage(
      'https://d14u0p1qkech25.cloudfront.net/72355297_793919d1-5fbc-4673-9a54-0ea754479e6b_thumbnail_250x250'
    ),
  );

  Widget buildContent() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child:Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children:const [
        Text(
          'Kiran Timsina',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Text(
          'CEO, UG Bazaar',
          style: TextStyle(fontSize: 18, height: 1.4),
        ),
        SizedBox(height: 16),
        Divider(),
        //social media icons
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     buildSocialIcon(FontAwesomeIcons.facebook),
        //     const SizedBox(width: 12),
        //     buildSocialIcon(FontAwesomeIcons.linkedin),
        //     const SizedBox(width: 12),
        //     buildSocialIcon(FontAwesomeIcons.twitter),
        //     const SizedBox(width: 12),
        //   ],
        // ),
        SizedBox(height: 16),
       //About
        Text(
          'About',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Text(
          'Once a hardcore programmer, then a social media junkie, now a self-taught systems designer and developer whose daily chores involves studying business processes to automate them and studying business problems to solve them through simple modular systems.',
          style: TextStyle(fontSize: 18, height: 1.7),
        ),
        SizedBox(height: 16),
        //Max investment
        SizedBox(height: 16),
        Text(
          'Maximum investment: NRs. 75,000/-',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        //Min investment
        SizedBox(height: 16),
        Text(
          'Minimum investment: NRs. 25,000/-',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        //Portfolio
        SizedBox(height: 16),
        Text(
          'Portdfolio: NRs. 75,000/-',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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