import 'package:flutter/material.dart';
import 'package:imager/imager.dart';
import 'package:touch_mouse_behavior/touch_mouse_behavior.dart';

void main() {
  Imager.placeholderPath = "assets/placeholder.png";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TouchMouseBehavior Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TouchMouseScrollable(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 36),
              const Text('Scroll'),
              const Text('Down'),
              const Text('With'),
              const Text('Mouse'),
              const Text('Or'),
              const Text('Touch'),
              const Text('Or'),
              const Text('Wheel'),
              const Text(':)'),
              ListView.builder(
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return image();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget image() {
    return Imager.fromNetwork(
      'https://docs.flutter.dev/assets/images/flutter-logo-sharing.png',
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 16),
    );
  }
}
