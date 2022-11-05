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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // children: [
          //   Image.asset(
          //     'lib/assets/images/spalding.jpg',
          //     height: 100.0,
          //   ),
          //   Image.asset(
          //     'lib/assets/images/molten.jpg',
          //     height: 100.0,
          //   ),
          //   Image.asset(
          //     'lib/assets/images/wilson.jpg',
          //     height: 100.0,
          //   )
          // ]),
          children: [
            Row(children: [
              Image.asset(
                'lib/assets/images/spalding.jpg',
                height: 100.0,
              ),
              Image.asset(
                'lib/assets/images/molten.jpg',
                height: 100.0,
              ),
              Image.asset(
                'lib/assets/images/wilson.jpg',
                height: 100.0,
              )
            ]),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.blue,
              child: Text('Container 1'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.red,
              child: Text('Container 2'),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.green,
              child: Text('Container 3'),
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
