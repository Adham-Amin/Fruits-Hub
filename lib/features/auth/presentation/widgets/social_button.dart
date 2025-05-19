import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.icon, required this.title, required this.onTap});

  final String icon;
  final String title;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: AppColors.lightBorder),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: ListTile(
          leading: SvgPicture.asset(icon),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.textSemiBold16(
              context,
            ).copyWith(color: AppColors.black),
          ),
        ),
      ),
    );
  }
}
