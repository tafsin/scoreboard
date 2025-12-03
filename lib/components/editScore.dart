
import 'package:flutter/material.dart';

class EditScore extends StatelessWidget {
  final int score;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const EditScore({super.key, required this.score, required this.onIncrement, required this.onDecrement });

  @override
  Widget build(BuildContext context) {


    return  Row(
      children: [
        IconButton(onPressed:onIncrement, icon: Icon(Icons.add, color: Colors.grey)),
        IconButton(onPressed: score > 0 ? onDecrement : null,
            icon: Icon(Icons.remove, color: Colors.grey)),
      ],
    );

  }
}
