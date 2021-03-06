import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dog extends StatefulWidget {
  const Dog({Key? key}) : super(key: key);

  @override
  State<Dog> createState() => _DogState();
}

class _DogState extends State<Dog> {
  Map data = {};
  bool? isLoading = true;
  Future getSaying() async {
    var response =
        await http.get(Uri.parse('https://api.adviceslip.com/advice'));
    setState(() {
      data = jsonDecode(response.body);
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSaying();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isLoading = true;
          });
          getSaying();
        },
        child: const Icon(Icons.sync),
      ),
      appBar: AppBar(
        title: const Text("Day By Day Saying"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Saying Of The Day",
                style: TextStyle(color: Colors.grey, fontSize: 20)),
            isLoading != true
                ? Text(data['slip']['advice'])
                : const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
