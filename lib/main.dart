import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          leading: const Icon(Icons.menu),
          title: const Text(
            "APPBAR",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
          flexibleSpace: Container(
            height: 10000,
            color: Colors.green,
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
