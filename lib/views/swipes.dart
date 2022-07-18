import 'package:flutter/material.dart';
import 'package:bootstrapped/models/users.dart';

// ignore: camel_case_types
class swipePages extends StatelessWidget {
  const swipePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      // body: UserCard(user: User.users[0]),
    );
  }
}

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.4,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(user.imageUrls[0])),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      user.interest,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 30),
                              child: SizedBox(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  child: const Text(
                                    'Reject',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    print('Reject');
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 30),
                              child: SizedBox(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  child: const Text(
                                    'Accept',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    print('Accept');
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(Icons.info_outline,
                              size: 25, color: Theme.of(context).primaryColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
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
          Expanded(
            child: Image.asset(
              'assets/MainLogo.png',
              height: 50,
              width: 50,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'BOOTRAPPED',
              style: Theme.of(context).textTheme.headline2,
            ),
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            icon: const Icon(Icons.message)),
        IconButton(
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            icon: const Icon(Icons.person)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
