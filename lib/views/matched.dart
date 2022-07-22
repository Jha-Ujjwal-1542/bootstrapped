import 'package:bootstrapped/views/menu_page.dart';
import 'package:flutter/material.dart';

class Matched extends StatelessWidget {
  const Matched({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: MenuPage(),
      appBar: CustomAppBar(),
      body: ContentPage(),
    );
  }
}

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: Center(
        child: Text(
          'Congratulations!! Its a Match ',
          style: TextStyle(
              color: Colors.blue, fontSize: 40.0, fontWeight: FontWeight.bold),
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
            'BOOTRAPPED',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
