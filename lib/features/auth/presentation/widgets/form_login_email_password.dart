import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_from_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class FormLoginEmailAndPassword extends StatefulWidget {
  const FormLoginEmailAndPassword({super.key});

  @override
  State<FormLoginEmailAndPassword> createState() =>
      _FormLoginEmailAndPasswordState();
}

class _FormLoginEmailAndPasswordState extends State<FormLoginEmailAndPassword> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFromField(
          hintText: S.of(context).email,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 16),
        CustomTextFromField(
          hintText: S.of(context).password,
          keyboardType:
              isHidden
                  ? TextInputType.emailAddress
                  : TextInputType.visiblePassword,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isHidden = !isHidden;
              });
            },
            icon:
                isHidden
                    ? const Icon(
                      Icons.visibility_off,
                      color: AppColors.lightGrey,
                    )
                    : const Icon(
                      Icons.remove_red_eye,
                      color: AppColors.lightGrey,
                    ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                S.of(context).forgotPassword,
                style: AppStyles.textSemiBold13(
                  context,
                ).copyWith(color: AppColors.lightPrimary),
              ),
            ),
          ],
        ),
        SizedBox(height: 33),
        CustomButton(title: S.of(context).login),
      ],
    );
  }
}
