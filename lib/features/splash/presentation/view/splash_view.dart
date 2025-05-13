import 'package:flutter/material.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/utils/shared_preferences.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/onbording/presentation/view/onbording_view.dart';
import 'package:fruits_hub/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const routeName = '/';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    executeNavigation(context);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  Future<void> executeNavigation(context) async {
    await Future.delayed(const Duration(seconds: 3));
    if(Prefs.getBool(kSeenOnBoarding)) {
      Navigator.pushReplacementNamed(context, LoginView.routeName);
    } else {
      Navigator.pushReplacementNamed(context, OnbordingView.routeName);
    }
  }
}