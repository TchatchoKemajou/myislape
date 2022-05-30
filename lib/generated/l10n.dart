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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome`
  String get welcomeText {
    return Intl.message(
      'Welcome',
      name: 'welcomeText',
      desc: '',
      args: [],
    );
  }

  /// `language`
  String get langue {
    return Intl.message(
      'language',
      name: 'langue',
      desc: '',
      args: [],
    );
  }

  /// `Speciality`
  String get spacialite {
    return Intl.message(
      'Speciality',
      name: 'spacialite',
      desc: '',
      args: [],
    );
  }

  /// `Level`
  String get niveau {
    return Intl.message(
      'Level',
      name: 'niveau',
      desc: '',
      args: [],
    );
  }

  /// `Personal Data`
  String get information {
    return Intl.message(
      'Personal Data',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Financial status`
  String get finance {
    return Intl.message(
      'Financial status',
      name: 'finance',
      desc: '',
      args: [],
    );
  }

  /// `Defense & Management`
  String get soutenance {
    return Intl.message(
      'Defense & Management',
      name: 'soutenance',
      desc: '',
      args: [],
    );
  }

  /// `Academic files`
  String get documents {
    return Intl.message(
      'Academic files',
      name: 'documents',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get deconnexion {
    return Intl.message(
      'Log out',
      name: 'deconnexion',
      desc: '',
      args: [],
    );
  }

  /// `E-Library`
  String get logitech {
    return Intl.message(
      'E-Library',
      name: 'logitech',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get planning {
    return Intl.message(
      'Schedule',
      name: 'planning',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get accueil {
    return Intl.message(
      'Home',
      name: 'accueil',
      desc: '',
      args: [],
    );
  }

  /// `Exams`
  String get exams {
    return Intl.message(
      'Exams',
      name: 'exams',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Normal session`
  String get normal {
    return Intl.message(
      'Normal session',
      name: 'normal',
      desc: '',
      args: [],
    );
  }

  /// `Resit`
  String get rattrapage {
    return Intl.message(
      'Resit',
      name: 'rattrapage',
      desc: '',
      args: [],
    );
  }

  /// `Decision`
  String get decision {
    return Intl.message(
      'Decision',
      name: 'decision',
      desc: '',
      args: [],
    );
  }

  /// `Actuality`
  String get actualite {
    return Intl.message(
      'Actuality',
      name: 'actualite',
      desc: '',
      args: [],
    );
  }

  /// `Important`
  String get important {
    return Intl.message(
      'Important',
      name: 'important',
      desc: '',
      args: [],
    );
  }

  /// `Calendar`
  String get calendrier {
    return Intl.message(
      'Calendar',
      name: 'calendrier',
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
      Locale.fromSubtags(languageCode: 'fr'),
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
