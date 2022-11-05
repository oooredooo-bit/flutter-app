// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 1;

  void doSomething() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo App'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
      ),
      body: Row(children: [
        Expanded(
          flex: 6,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.blue,
            child: Text('Counter # $counter'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.red,
            child: Text('2'),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.green,
            child: Text('3'),
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: doSomething,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),
    );
  }
}
