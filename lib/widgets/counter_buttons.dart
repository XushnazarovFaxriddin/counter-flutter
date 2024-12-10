import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterButtons({
    required this.onIncrement,
    required this.onDecrement,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(
          icon: Icons.remove,
          onPressed: onDecrement,
          color: Colors.red,
        ),
        const SizedBox(width: 20),
        _buildButton(
          icon: Icons.add,
          onPressed: onIncrement,
          color: Colors.green,
        ),
      ],
    );
  }

  Widget _buildButton({
    required IconData icon,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.6),
              blurRadius: 15,
              spreadRadius: 5,
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
