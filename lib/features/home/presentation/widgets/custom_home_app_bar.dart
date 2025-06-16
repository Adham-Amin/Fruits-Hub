import 'package:flutter/material.dart';
import 'package:fruits_hub/core/functions/get_user.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/notification_button.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(AppAssets.imagesProfileImage),
      title: Text(
        S.of(context).goodMorning,
        style: AppStyles.textRegular16(
          context,
        ).copyWith(color: AppColors.lightGrey),
      ),
      subtitle: Text(
        getUser().name,
        style: AppStyles.textBold16(context).copyWith(color: AppColors.black),
      ),
      trailing: NotificationButton(),
    );
  }
}

