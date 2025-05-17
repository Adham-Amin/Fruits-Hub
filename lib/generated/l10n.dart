// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to`
  String get onboarding1Title {
    return Intl.message(
      'Welcome to',
      name: 'onboarding1Title',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get onboarding1Subtitle1 {
    return Intl.message(
      'Fruit',
      name: 'onboarding1Subtitle1',
      desc: '',
      args: [],
    );
  }

  /// `HUB`
  String get onboarding1Subtitle2 {
    return Intl.message(
      'HUB',
      name: 'onboarding1Subtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and top quality.`
  String get onboarding1Description {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and top quality.',
      name: 'onboarding1Description',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onboarding1Skip {
    return Intl.message('Skip', name: 'onboarding1Skip', desc: '', args: []);
  }

  /// `Search and Shop`
  String get onboarding2Title {
    return Intl.message(
      'Search and Shop',
      name: 'onboarding2Title',
      desc: '',
      args: [],
    );
  }

  /// `We bring you the best hand-picked fruits. Check details, photos, and reviews to find your perfect pick.`
  String get onboarding2Description {
    return Intl.message(
      'We bring you the best hand-picked fruits. Check details, photos, and reviews to find your perfect pick.',
      name: 'onboarding2Description',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get onboarding2Start {
    return Intl.message(
      'Start Now',
      name: 'onboarding2Start',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message('Login', name: 'loginTitle', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot your password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message('Login', name: 'loginButton', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get noAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get createAccount {
    return Intl.message(
      'Create an account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get signupTitle {
    return Intl.message('New Account', name: 'signupTitle', desc: '', args: []);
  }

  /// `Full Name`
  String get name {
    return Intl.message('Full Name', name: 'name', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get conditions {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'conditions',
      desc: '',
      args: [],
    );
  }

  /// `I agree to our Terms and Conditions`
  String get agreeToTerms {
    return Intl.message(
      'I agree to our Terms and Conditions',
      name: 'agreeToTerms',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get signupButton {
    return Intl.message(
      'Create New Account',
      name: 'signupButton',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Password Recovery`
  String get resetPasswordTitle {
    return Intl.message(
      'Password Recovery',
      name: 'resetPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Don’t worry, just enter your phone number and we’ll send you a verification code.`
  String get enterPhoneToReset {
    return Intl.message(
      'Don’t worry, just enter your phone number and we’ll send you a verification code.',
      name: 'enterPhoneToReset',
      desc: '',
      args: [],
    );
  }

  /// `Send Verification Code`
  String get sendCode {
    return Intl.message(
      'Send Verification Code',
      name: 'sendCode',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCodeTitle {
    return Intl.message(
      'Verify Code',
      name: 'verifyCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `The code was sent to`
  String get codeSentTo {
    return Intl.message(
      'The code was sent to',
      name: 'codeSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCodeButton {
    return Intl.message(
      'Verify Code',
      name: 'verifyCodeButton',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message('Resend Code', name: 'resendCode', desc: '', args: []);
  }

  /// `New Password`
  String get newPasswordTitle {
    return Intl.message(
      'New Password',
      name: 'newPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create a new password to log in`
  String get enterNewPassword {
    return Intl.message(
      'Create a new password to log in',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Set New Password`
  String get setNewPassword {
    return Intl.message(
      'Set New Password',
      name: 'setNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get passwordChangedSuccess {
    return Intl.message(
      'Password changed successfully',
      name: 'passwordChangedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get emailAlreadyInUse {
    return Intl.message(
      'The account already exists for that email.',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection.`
  String get networkFailed {
    return Intl.message(
      'No internet connection.',
      name: 'networkFailed',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again later.`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong, please try again later.',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Please enter`
  String get required {
    return Intl.message('Please enter', name: 'required', desc: '', args: []);
  }

  /// `Wrong password`
  String get wrongPassword {
    return Intl.message(
      'Wrong password',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email not found`
  String get userNotFound {
    return Intl.message(
      'Email not found',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
