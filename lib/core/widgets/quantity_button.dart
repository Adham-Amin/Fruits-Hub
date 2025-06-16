import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.icon,
    required this.colorIcon,
  });

  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color colorIcon;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        backgroundColor: backgroundColor,
      ),
      child: Icon(icon, color: colorIcon),
    );
  }
}