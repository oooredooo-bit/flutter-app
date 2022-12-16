import 'package:flutter/material.dart';
import 'package:flutter_app/pages/api.dart';
import 'package:flutter_app/pages/cards.dart';
import 'package:flutter_app/pages/counter.dart';
import 'package:flutter_app/pages/dashboard.dart';
import 'package:flutter_app/pages/forms.dart';
import 'package:flutter_app/pages/http.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Noel Antonio'),
            accountEmail: const Text('ndantonio@pup.edu.ph'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://tse3.mm.bing.net/th?id=OIP.usNDjmGIlvQsfCd7HVBiYAHaHa&pid=Api&P=0',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Dashboard'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Dashboard(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.countertops),
            title: const Text('Counter'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Counter(
                  title: 'Counter',
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.card_travel_sharp),
            title: const Text('Cards'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Cards()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.http),
            title: const Text('Network Request #1'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MyApi()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.http),
            title: const Text('Network Request #2'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MyHttp()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.tag),
            title: const Text('Forms'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FormScreen()),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
