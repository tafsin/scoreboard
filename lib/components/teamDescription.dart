
import 'package:flutter/material.dart';

class Teamdescription extends StatelessWidget {
  final String image;
  final String name;
  const Teamdescription({super.key,  required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    double imageSize = (width * 0.10).clamp(40, 150);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/TeamA.png',
          width: imageSize,
          height: imageSize,
          fit: BoxFit.contain,),
        Text (name, style: TextStyle(color: Colors.grey),),
      ],
    );
  }
}
