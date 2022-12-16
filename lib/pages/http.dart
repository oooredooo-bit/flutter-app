import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';

class MyHttp extends StatefulWidget {
  const MyHttp({super.key});

  @override
  _MyHttpState createState() => _MyHttpState();
}

class _MyHttpState extends State<MyHttp> {
  List data = [];

  Future<String> getJSONData() async {
    var response = await http.get(
        Uri.parse("https://unsplash.com/napi/photos/Q14J2k8VE3U/related"),
        headers: {"Accept": "application/json"});

    setState(() {
      data = json.decode(response.body)['results'];
    });

    return "Successful";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Request'),
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _buildImageColumn(data[index]);
        });
  }

  Widget _buildImageColumn(dynamic item) => Container(
        decoration: const BoxDecoration(color: Colors.white54),
        margin: const EdgeInsets.all(4),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: item['urls']['small'],
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
              fadeOutDuration: new Duration(seconds: 1),
              fadeInDuration: new Duration(seconds: 3),
            ),
            _buildRow(item)
          ],
        ),
      );

  Widget _buildRow(dynamic item) {
    return ListTile(
      title: Text(
        item['description'] == null ? '' : item['description'],
      ),
      subtitle: Text("Likes: " + item['likes'].toString()),
    );
  }

  @override
  void initState() {
    super.initState();
    // Call the getJSONData() method when the app initializes
    this.getJSONData();
  }
}
