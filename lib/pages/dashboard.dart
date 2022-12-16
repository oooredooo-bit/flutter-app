import 'package:flutter/material.dart';
import 'package:flutter_app/layout/navbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      drawer: const NavBar(),
      body: const Center(
          child: Text(
        'WELCOME TO FLUTTER',
        style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 4.0,
            color: Colors.grey),
      )),
    );
  }
}
