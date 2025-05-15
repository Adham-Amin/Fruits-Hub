import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/form_login_email_password.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/have_or_not_account.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/social_button.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 24),
            FormLoginEmailAndPassword(),
            SizedBox(height: 33),
            NotHaveOrHaveAccount(
              onTap: () {
                Navigator.pushNamed(context, SigninView.routeName);
              },
              textOne: S.of(context).noAccount,
              textTwo: S.of(context).createAccount,
            ),
            SizedBox(height: 33),
            Row(
              spacing: 18,
              children: [
                Expanded(child: Divider(color: AppColors.dividerColor)),
                Text(
                  S.of(context).or,
                  style: AppStyles.textSemiBold16(
                    context,
                  ).copyWith(color: AppColors.black),
                ),
                Expanded(child: Divider(color: AppColors.dividerColor)),
              ],
            ),
            SizedBox(height: 16),
            SocialButton(
              icon: AppAssets.imagesGoogleIcon,
              title: S.of(context).loginWithGoogle,
            ),
            SizedBox(height: 16),
            SocialButton(
              icon: AppAssets.imagesAppleIcon,
              title: S.of(context).loginWithApple,
            ),
            SizedBox(height: 16),
            SocialButton(
              icon: AppAssets.imagesFacebookIcon,
              title: S.of(context).loginWithFacebook,
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}