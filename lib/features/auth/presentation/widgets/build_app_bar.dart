import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios),
    ),
    title: Text(title, style: AppStyles.textBold19(context)),
  );
}
