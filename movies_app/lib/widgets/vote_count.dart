import 'package:flutter/material.dart';

class Vote extends StatelessWidget {
  final int value;

  const Vote(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.favorite, color: Colors.red),
        const SizedBox(width: 8.0),
        Text(
          value.toStringAsFixed(0),
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
