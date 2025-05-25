import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/functions/check_local.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class NotActiveBottomItem extends StatelessWidget {
  const NotActiveBottomItem({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon);
  }
}

class ActiveBottomItem extends StatelessWidget {
  const ActiveBottomItem({super.key, required this.icon, required this.title});

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.backgroundIcon,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: checkLocal() ? 12 : 0,
            right: checkLocal() ? 0 : 12,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: ShapeDecoration(
                  color: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Center(child: SvgPicture.asset(icon)),
              ),
              const SizedBox(width: 4),
              Text(
                title,
                style: AppStyles.textSemiBold11(
                  context,
                ).copyWith(color: AppColors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}