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
      body: Center(
          child: Container(
        padding: EdgeInsets.all(20.0),
        // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        // padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 25.0),
        color: Colors.amberAccent,
        child: Text('Hello World'),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: doSomething,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),
    );
  }
}
