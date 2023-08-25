import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(const ListApp());
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'List App',
      home: HomeScreen(),
    );
  }
}
