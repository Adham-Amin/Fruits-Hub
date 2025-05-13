import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onbording/presentation/widgets/onbording_view_body.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});

  static const routeName = '/onbording';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: OnbordingViewBody()));
  }
}
