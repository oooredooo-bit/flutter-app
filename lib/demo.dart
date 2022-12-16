import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: DemoExtended(),
    ));

class DemoContainer extends StatelessWidget {
  const DemoContainer({super.key});

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
          // padding: const EdgeInsets.all(10.0),
          // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 25.0),
          color: Colors.amberAccent,
          child: const Text('Container'),
        )));
  }
}

class DemoRow extends StatelessWidget {
  const DemoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo App'),
          centerTitle: true,
          backgroundColor: Colors.amber[400],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/spalding.jpg',
              height: 300.0,
            ),
            Image.asset(
              'assets/images/molten.jpg',
              height: 320.0,
            ),
            Image.asset(
              'assets/images/wilson.jpg',
              height: 250.0,
            )
          ],
        ));
  }
}

class DemoColumn extends StatelessWidget {
  const DemoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo App'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Image.asset(
                'assets/images/spalding.jpg',
                height: 100.0,
              ),
              Image.asset(
                'assets/images/molten.jpg',
                height: 100.0,
              ),
              Image.asset(
                'assets/images/wilson.jpg',
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
    );
  }
}

class DemoExtended extends StatelessWidget {
  const DemoExtended({super.key});

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
          flex: 5,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.blue,
            child: const Text('1'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.red,
            child: const Text('2'),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.green,
            child: const Text('3'),
          ),
        )
      ]),
    );
  }
}
