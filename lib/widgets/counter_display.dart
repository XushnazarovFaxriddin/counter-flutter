import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int counter;

  const CounterDisplay({required this.counter, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: const TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
