import 'package:flutter/material.dart';

class Scorecard extends StatelessWidget {
  const Scorecard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.6, // 70% of screen width
        heightFactor: 0.5,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),

          decoration: BoxDecoration(
            color: const Color(0xFF14213D),
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
      ),
    );
  }
}
