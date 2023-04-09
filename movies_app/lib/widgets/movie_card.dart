/*um Container para exibir uma imagem do pôster do filme.  */
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String posterPath;
  final VoidCallback onPressed;

  const MovieCard({
    Key? key,
    required this.posterPath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://image.tmdb.org/t/p/w220_and_h330_face$posterPath',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
