import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/form_signin.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/have_or_not_account.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 24),
            FormSignin(),
            SizedBox(height: 16),
            Row(
              children: [
                CustomCheckBox(
                  onChecked: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  isChecked: isChecked,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: S.of(context).conditions,
                          style: AppStyles.textSemiBold13(
                            context,
                          ).copyWith(color: AppColors.lightGrey),
                        ),
                        TextSpan(
                          text: ' ',
                          style: AppStyles.textSemiBold13(
                            context,
                          ).copyWith(color: AppColors.lightGrey),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: S.of(context).agreeToTerms,
                          style: AppStyles.textSemiBold13(
                            context,
                          ).copyWith(color: AppColors.lightPrimary),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            CustomButton(title: S.of(context).signupButton),
            SizedBox(height: 26),
            NotHaveOrHaveAccount(
              textOne: S.of(context).alreadyHaveAccount,
              textTwo: S.of(context).login,
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
