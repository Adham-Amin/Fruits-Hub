import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/functions/bar_massage.dart';
import 'package:fruits_hub/core/services/get_it_sevices.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/login_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            S.of(context).login,
            style: AppStyles.textBold19(
              context,
            ).copyWith(color: AppColors.black),
          ),
        ),
        body: Builder(
          builder: (context) {
            return BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is LoginLoaded) {
                  // Navigate to the next screen
                } else if (state is LoginError) {
                  showSnackBar(context, state.failure.message);
                }
              },
              builder: (context, state) {
                return ModalProgressHUD(
                  inAsyncCall: state is LoginLoading,
                  child: LoginViewBody(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
