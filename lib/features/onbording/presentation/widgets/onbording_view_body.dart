import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/services/shared_preferences.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/onbording/presentation/widgets/custom_page_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class OnbordingViewBody extends StatefulWidget {
  const OnbordingViewBody({super.key});

  @override
  State<OnbordingViewBody> createState() => _OnbordingViewBodyState();
}

class _OnbordingViewBodyState extends State<OnbordingViewBody> {
  late PageController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      setState(() {
        currentIndex = controller.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomPageView(controller: controller),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primary,
              color:
                  currentIndex == 1
                      ? AppColors.primary
                      : AppColors.primary.withValues(alpha: 0.5),
            ),
          ),
          SizedBox(height: 28),
          AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: currentIndex == 1 ? 1 : 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                onPressed:
                    () {
                      Prefs.setBool(kSeenOnBoarding, true);
                      Navigator.pushReplacementNamed(
                      context,
                      LoginView.routeName,
                    );
                    },
                title: S.of(context).onboarding2Start,
              ),
            ),
          ),
          SizedBox(height: 42),
        ],
      ),
    );
  }
}
