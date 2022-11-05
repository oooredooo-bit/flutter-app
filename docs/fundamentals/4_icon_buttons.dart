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
        child: ElevatedButton.icon(
            onPressed: doSomething, icon: Icon(Icons.add), label: Text('add')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: doSomething,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),
    );
  }
}
