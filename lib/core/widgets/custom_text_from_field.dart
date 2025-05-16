import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.keyboardType,
    this.onSaved,
  });

  final String hintText;
  final TextInputType keyboardType;
  final void Function(String?)? onSaved;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => value!.isEmpty ? "${S.of(context).required} $hintText" : null,
      onSaved: onSaved,
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.visiblePassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.backgroundTF,
        hintText: hintText,
        hintStyle: AppStyles.textBold13(
          context,
        ).copyWith(color: AppColors.lightGrey),
        suffixIcon: suffixIcon,
        border: customOutlineBorder(),
        enabledBorder: customOutlineBorder(),
        focusedBorder: customOutlineBorder(),
      ),
    );
  }

  OutlineInputBorder customOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.lightBorder),
    );
  }
}