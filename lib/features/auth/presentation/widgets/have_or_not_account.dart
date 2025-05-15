import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class NotHaveOrHaveAccount extends StatelessWidget {
  const NotHaveOrHaveAccount({
    super.key, required this.textOne, required this.textTwo, this.onTap,
  });

  final String textOne;
  final String textTwo;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: textOne,
            style: AppStyles.textRegular16(
              context,
            ).copyWith(color: AppColors.lightGrey),
          ),
          TextSpan(
            text: ' ',
            style: AppStyles.textRegular16(
              context,
            ).copyWith(color: AppColors.lightGrey),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: textTwo,
            style: AppStyles.textSemiBold16(
              context,
            ).copyWith(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}