// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void onClick() {}

void main() => runApp(MaterialApp(
        home: Scaffold(
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
      floatingActionButton: const FloatingActionButton(
        onPressed: onClick,
        backgroundColor: Colors.amber,
        child: Text('Click', textAlign: TextAlign.center),
      ),
    )));
