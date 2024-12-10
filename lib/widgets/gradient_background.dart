import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xFFFF6FD8), Color(0xFF3813C2)],
          center: Alignment(0.5, -0.5),
          radius: 1.5,
        ),
      ),
      child: Center(child: child),
    );
  }
}
