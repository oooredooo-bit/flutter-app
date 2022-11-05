// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  void doSomething() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo App'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            'lib/assets/images/spalding.jpg',
            height: 300.0,
          ),
          Image.asset(
            'lib/assets/images/molten.jpg',
            height: 320.0,
          ),
          Image.asset(
            'lib/assets/images/wilson.jpg',
            height: 250.0,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: doSomething,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),
    );
  }
}
