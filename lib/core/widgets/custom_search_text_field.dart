import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(AppAssets.imagesIconSearch)),
          ),
          hintText: S.of(context).searchHere,
          hintStyle: AppStyles.textRegular13(
            context,
          ).copyWith(color: AppColors.lightGrey),
          suffixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(AppAssets.imagesIconFilter)),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}