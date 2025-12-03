
import 'package:flutter/material.dart';

class Scorecard extends StatelessWidget {
  final Widget child;
  const Scorecard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double containerWidth = (size.width * 0.7).clamp(350, 900);
    double containerHeight = (size.height * 0.5).clamp(350, 900);

    return  Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        height: containerHeight,
        width: containerWidth,

        decoration: BoxDecoration(
          color: Color(0xFF14213D),
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 30,
              offset: Offset(0, 12),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
