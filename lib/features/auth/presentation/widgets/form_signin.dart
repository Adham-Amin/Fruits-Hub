import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_text_from_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class FormSignin extends StatefulWidget {
  const FormSignin({super.key});

  @override
  State<FormSignin> createState() => _FormSigninState();
}

class _FormSigninState extends State<FormSignin> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFromField(
          hintText: S.of(context).name,
          keyboardType: TextInputType.name,
        ),
        SizedBox(height: 16),
        CustomTextFromField(
          hintText: S.of(context).email,
          keyboardType: TextInputType.name,
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
      ],
    );
  }
}
