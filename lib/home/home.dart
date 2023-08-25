import 'package:flutter/material.dart';

import '../services/prime.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Is this number prime?"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListCard(
          number: index,
          isPrime: PrimeChecker.isPrime(index),
        ),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.number,
    required this.isPrime,
  });

  final int number;
  final bool isPrime;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
            isPrime ? Icons.check_box : Icons.check_box_outline_blank_sharp),
        title: Text("$number is ${isPrime ? "prime" : "not prime"}"),
      ),
    );
  }
}
