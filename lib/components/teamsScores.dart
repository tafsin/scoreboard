
import 'package:flutter/material.dart';

class TeamsScores extends StatelessWidget {
  final int score;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;
  const TeamsScores({super.key, required this.score,  this.onIncrement,  this.onDecrement });

  Widget? buildEditScore (){
    if(onIncrement == null || onDecrement == null) return null;
    return Row(
      children: [

        IconButton(onPressed:onIncrement, icon: Icon(Icons.add, color: Colors.grey)),
        IconButton(onPressed: score > 0 ? onDecrement : null,
            icon: Icon(Icons.remove, color: Colors.grey)),
      ],
    );


  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double fontSize = (size.width * 0.12).clamp(60, 180);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Text(score.toString(), style: TextStyle(color: Colors.grey, fontSize:fontSize,),),
        if (buildEditScore() != null) buildEditScore()!,


      ],
    );
  }
}
