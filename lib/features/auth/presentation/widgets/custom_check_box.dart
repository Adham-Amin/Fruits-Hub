import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChecked});

  final bool isChecked;
  final ValueChanged<bool> onChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: 24,
        width: 24,
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primary : AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              width: 1,
              color: isChecked ? AppColors.primary : AppColors.lightBorder,
            ),
          ),
        ),
        child:
            isChecked
                ? const Icon(Icons.check, color: AppColors.white, size: 16)
                : null,
      ),
    );
  }
}
