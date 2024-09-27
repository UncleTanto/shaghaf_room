import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/home/presentation/views/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: Register(),
    );
  }
}