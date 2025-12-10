
import 'package:flutter/material.dart';

class AppBackGround extends StatelessWidget {
  final Widget child;
  const AppBackGround({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF2D3C70),
            Color(0xFF23315B),
            Color(0xFF1A2647),
            // dark oxford blue
          ],
        ),
      ),
      child: child,
    );
  }
}
