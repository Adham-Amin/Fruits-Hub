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
