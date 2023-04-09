/*um Container para exibir um circulo animado 
que indica o progresso do carregamento. */

import 'package:flutter/material.dart';

class CenteredProgress extends StatelessWidget {
  const CenteredProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
