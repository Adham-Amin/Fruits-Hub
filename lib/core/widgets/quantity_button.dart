import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.icon,
    required this.colorIcon,
    this.padding = 8,
  });

  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color colorIcon;
  final IconData icon;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(200),
        ),
        padding: EdgeInsets.all(padding),
        child: Icon(icon, size: 16, color: colorIcon),
      ),
    );
  }
}
