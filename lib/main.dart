 import 'package:flutter/material.dart';
import 'package:flash_light_app/torch_light.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Torch Lite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TorchLite(),
    );
  }
}