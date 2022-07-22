// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'Settings Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              margin: const EdgeInsets.all(8.0),
              color: Colors.blue,
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Ujjwal Jha',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5603AQGu8VXUgQ-2yA/profile-displayphoto-shrink_200_200/0/1592378436724?e=2147483647&v=beta&t=ZHnGaj1cH_uLGScI8W0tr67ibi0x5JGCSaB6Fo33xY8'),
                ),
                // trailing: Icon(
                //   Icons.edit,
                //   color: Colors.white,
                // ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(children: const <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  title: Text('Edit Profile'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_box_outlined,
                    color: Colors.blue,
                  ),
                  title: Text('Change Bio'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Icon(
                    Icons.attach_money_outlined,
                    color: Colors.blue,
                  ),
                  title: Text('Change capital'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Icon(
                    Icons.money,
                    color: Colors.blue,
                  ),
                  title: Text('Change offered share'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Icon(
                    Icons.factory,
                    color: Colors.blue,
                  ),
                  title: Text('Change industry'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Icon(
                    Icons.money,
                    color: Colors.blue,
                  ),
                  title: Text('Change offered share'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
