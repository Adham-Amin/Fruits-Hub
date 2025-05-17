import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/functions/bar_massage.dart';
import 'package:fruits_hub/core/services/get_it_sevices.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/manager/signin_cubits/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/signin_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const String routeName = '/signin';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 20,
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            S.of(context).signupTitle,
            style: AppStyles.textBold19(
              context,
            ).copyWith(color: AppColors.black),
          ),
        ),
        body: Builder(
          builder: (context) {
            return BlocConsumer<SigninCubit, SigninState>(
              listener: (context, state) {
                if (state is SigninLoaded) {
                  Navigator.pop(context);
                } else if (state is SigninError) {
                 showSnackBar(context, state.failure.message);
                }
              },
              builder: (context, state) {
                return ModalProgressHUD(
                  inAsyncCall: state is SigninLoading,
                  child: SigninViewBody(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
