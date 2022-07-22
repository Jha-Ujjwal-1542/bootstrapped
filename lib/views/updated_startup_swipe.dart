// ignore_for_file: avoid_print

import 'package:bootstrapped/views/matched.dart';
import 'package:bootstrapped/views/menu_page.dart';
import 'package:bootstrapped/views/profiles/investor_profile.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class updatedSwipeStartups extends StatelessWidget {
  const updatedSwipeStartups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuPage(),
      appBar: const CustomAppBar(),
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List names = [
    "Clock B Tower",
    "Hathway VCs",
    "Next VC",
    "Kantipur VC",
    "Team One",
    "Apex VC",
    "Sunrise VC",
    "Nabil Investments",
    "Mahila Ventures",
    "Naulo VC"
  ];
  final List locations = [
    "Lalitpur",
    "Bhaktapur",
    "Butwal",
    "Dhanusha",
    "Jhapa",
    "Raxaul",
    "Kathmandu",
    "Pokhara",
    "Lalitpur",
    "Janakpur"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const investor_profile()),
              );
            },
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Text and Title
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          width: 55.0,
                          height: 55.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.green,
                            backgroundImage: NetworkImage(
                                'https://thumbs.dreamstime.com/b/businessman-profile-icon-male-portrait-flat-design-vector-illustration-47075259.jpg'),
                          ),
                        ),
                        const SizedBox(width: 6.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              names[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              locations[index],
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    //Buttons
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10.0),
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        child: Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Matched()));
                              },
                              child: const Text(
                                'REJECT',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
                                  letterSpacing: 2.2,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Matched()));
                                },
                                child: const Text(
                                  'ACCEPT',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 2.2,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Text(
            'BOOTSTRAPPED',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
