import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List data = [];
  bool? isLoading;
  Future getDog() async {
    var response = await http.get(
        Uri.parse('https://api.thedogapi.com/v1/breeds'),
        headers: {'x-api-key': 'ABC123'});
    setState(() {
      data = jsonDecode(response.body);
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getDog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dog List"),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: Column(
                children: [
                  Image.network(data[index]['image']['url']),
                  Text(data[index]['name']),
                ],
              ));
            }));
  }
}
