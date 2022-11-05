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
          //   child: Image(
          //   // image: NetworkImage('https://w0.peakpx.com/wallpaper/404/508/HD-wallpaper-flutter-logo-flutter-code-computer-programming-logo.jpg')
          //   // image: AssetImage('lib/assets/images/spalding.jpg'),
          // )
          // child: Image.asset('lib/assets/images/spalding.jpg'),
          child: Image.network(
              'https://w0.peakpx.com/wallpaper/404/508/HD-wallpaper-flutter-logo-flutter-code-computer-programming-logo.jpg')),
      floatingActionButton: FloatingActionButton(
        onPressed: doSomething,
        backgroundColor: Colors.amber,
        child: Text('Click', textAlign: TextAlign.center),
      ),
    );
  }
}
