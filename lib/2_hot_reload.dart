// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  void doSomething() {
    // print('Button was clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo App'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
      ),
      body: Center(
          child: const Text(
        'HELLO WORLD',
        style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 4.0,
            color: Colors.grey),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: doSomething,
        backgroundColor: Colors.amber,
        // child: Text('Click', textAlign: TextAlign.center),
        child: Icon(Icons.add),
      ),
    );
  }
}
