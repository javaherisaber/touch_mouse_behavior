import 'package:flutter/material.dart';
import 'package:touch_mouse_behavior/touch_mouse_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TouchMouseScrollable(
        child: SingleChildScrollView(
          child: Column(
              children: const [
                Text('Hello'),
                Text('World'),
                Text('!'),
              ]
          ),
        ),
      ),
    );
  }
}