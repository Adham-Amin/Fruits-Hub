import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/functions/bar_massage.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/manager/signin_cubits/signin_cubit.dart';
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
  late String email, password, name;
  bool isChecked = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              FormSignin(
                name: (value) => name = value!,
                email: (value) => email = value!,
                password: (value) => password = value!,
              ),
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
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    if (isChecked == true) {
                      context.read<SigninCubit>().createUser(
                        email: email,
                        password: password,
                        name: name,
                      );
                    } else {
                      showSnackBar(context, S.of(context).agreeToTerms);
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                title: S.of(context).signupButton,
              ),
              SizedBox(height: 26),
              NotHaveOrHaveAccount(
                onTap: () => Navigator.pop(context),
                textOne: S.of(context).alreadyHaveAccount,
                textTwo: S.of(context).login,
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}