import 'package:flutter/material.dart';

class Difficulty extends StatefulWidget {
  final int levelDifficulty;

  // ignore: use_key_in_widget_constructors
  const Difficulty({required this.levelDifficulty});

  @override
  State<Difficulty> createState() => _DifficultyState();
}

class _DifficultyState extends State<Difficulty> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (widget.levelDifficulty >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.levelDifficulty >= 2 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.levelDifficulty >= 3 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.levelDifficulty >= 4 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.levelDifficulty >= 5 ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}
