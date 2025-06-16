import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.backgroundIcon,
        shape: OvalBorder(),
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(AppAssets.imagesIconNotification),
      ),
    );
  }
}