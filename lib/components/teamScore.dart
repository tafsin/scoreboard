
import 'package:flutter/material.dart';

class Teamscore extends StatelessWidget {
  final int teamAScore;
  final int teamBScore;
  const Teamscore({super.key, required this.teamAScore, required this.teamBScore});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double fontSize = (size.width * 0.12).clamp(60, 180);
    return Row(
      children: [
        Text(teamAScore.toString(), style: TextStyle(color: Colors.grey, fontSize:fontSize,),),
        const SizedBox(width: 10,),
        Icon(Icons.remove, size: 20, color: Colors.grey,),
        const SizedBox(width: 10,),
        Text(teamBScore.toString(), style: TextStyle(color: Colors.grey, fontSize: fontSize),),
      ],
    );
  }
}
