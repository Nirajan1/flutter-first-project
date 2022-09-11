import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/about.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              child: Text('N'),
            ),
            accountName: const Text('Nirajan Joshi'),
            accountEmail: const Text(
              "nirajajoshi80@gmail.com",
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.settings),
            title: const Text('Setting'),
          ),
          ListTile(
            onTap: () {
              Get.to(
                () => const AboutPage(),
              );
            },
            leading: const Icon(Icons.info),
            title: const Text('About Us'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.print),
            title: const Text('print'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
          ),
          const Divider(
            height: 2,
          ),
        ],
      ),
    );
  }
}
