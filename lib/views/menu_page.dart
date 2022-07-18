import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Image(
              image: const AssetImage('assets/images/menu_background.jpg'),
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Row(
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/images/people/woman1.jpg'),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              "Jacek Kawiak",
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "linkujjwal@gmail.com",
                              style: TextStyle(
                                height: 2,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ListView(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.vertical,
                  children: const <Widget>[
                    MenuTile("Dashboard", Icons.dashboard),
                    MenuTile("Profile settings", Icons.settings),
                    MenuTile("Chats", Icons.chat_bubble),
                    MenuTile("Profile", Icons.zoom_in),
                    MenuTile("Logout", Icons.exit_to_app_outlined),
                    MenuTile("Matches", Icons.handshake),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  final IconData icon;

  // ignore: use_key_in_widget_constructors
  const MenuTile(
    this.title,
    this.icon,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 3,
        ),
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
