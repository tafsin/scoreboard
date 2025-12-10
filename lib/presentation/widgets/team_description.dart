import 'package:flutter/material.dart';

class Teamdescription extends StatelessWidget {
  const Teamdescription({
    super.key,
    required this.name,
    required this.image,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    double imageSize = (width * 0.10).clamp(40, 150);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: imageSize,
          height: imageSize,
          fit: BoxFit.contain,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
