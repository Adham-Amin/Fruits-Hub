import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/utils/shared_preferences.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.bkgroundImage,
    required this.image,
    this.title,
    required this.description,
    required this.isVisible,
  });

  final String bkgroundImage;
  final String image;
  final String? title;
  final String description;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(bkgroundImage, fit: BoxFit.fill),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: TextButton(
                  onPressed: () {
                    Prefs.setBool(kSeenOnBoarding, true);
                    Navigator.pushReplacementNamed(
                      context,
                      LoginView.routeName,
                    );
                  },
                  child: Text(
                    S.of(context).onboarding1Skip,
                    style: AppStyles.textRegular11(
                      context,
                    ).copyWith(color: AppColors.lightGrey),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 52),
        title?.isNotEmpty ?? false
            ? Text(
              title!,
              textAlign: TextAlign.center,
              style: AppStyles.textBold23(
                context,
              ).copyWith(color: AppColors.black),
            )
            : Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: S.of(context).onboarding1Title,
                    style: AppStyles.textBold23(
                      context,
                    ).copyWith(color: AppColors.black),
                  ),
                  TextSpan(
                    text: ' ${S.of(context).onboarding1Subtitle1}',
                    style: AppStyles.textSemiBold13(
                      context,
                    ).copyWith(color: AppColors.primary),
                  ),
                  TextSpan(
                    text: S.of(context).onboarding1Subtitle2,
                    style: AppStyles.textSemiBold13(
                      context,
                    ).copyWith(color: AppColors.orange),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: AppStyles.textSemiBold13(
              context,
            ).copyWith(color: AppColors.grey),
          ),
        ),
        SizedBox(height: 64),
      ],
    );
  }
}
