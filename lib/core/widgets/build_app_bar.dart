import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/notification_button.dart';

AppBar buildAppBar(
  BuildContext context, {
  required String title,
  required bool backButton,
  bool? notificationButton,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: Visibility(
      visible: backButton,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
    ),
    title: Text(title, style: AppStyles.textBold19(context)),
    actions: [
      Visibility(
        visible: notificationButton ?? false,
        child: NotificationButton(),
      ),
    ],
  );
}
