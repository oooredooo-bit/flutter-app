// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void doAsync() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('redirect');
    });

    await Future.delayed(Duration(seconds: 2), () {
      print('wait redirect');
    });
  }

  @override
  void initState() {
    doAsync();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
