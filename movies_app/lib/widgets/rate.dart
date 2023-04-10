import 'package:flutter/material.dart';

/*vai apresentar uma Row com 2 widgets (Icon e Text) 
com um ícone de coraçao vermelho 
e a nota que o filme recebeu até o momento. 
*/

class Rate extends StatelessWidget {
  final double value;

  const Rate(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Color.fromARGB(255, 255, 238, 86)),
        const SizedBox(width: 8.0),
        Text(
          value?.toStringAsFixed(1) ?? '0.0',
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
