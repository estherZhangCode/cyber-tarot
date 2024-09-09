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

  /// `What’s \nyour today’s \nfortune?`
  String get home_pick_card_section_title {
    return Intl.message(
      'What’s \nyour today’s \nfortune?',
      name: 'home_pick_card_section_title',
      desc: '',
      args: [],
    );
  }

  /// `Card\nof the day`
  String get home_pick_card_view_title {
    return Intl.message(
      'Card\nof the day',
      name: 'home_pick_card_view_title',
      desc: '',
      args: [],
    );
  }

  /// `have a pick`
  String get home_pick_card_view_subtitle {
    return Intl.message(
      'have a pick',
      name: 'home_pick_card_view_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Is this \nyour ego ?`
  String get home_diary_section_title {
    return Intl.message(
      'Is this \nyour ego ?',
      name: 'home_diary_section_title',
      desc: '',
      args: [],
    );
  }

  /// `inspiration`
  String get home_bottom_view_section_title {
    return Intl.message(
      'inspiration',
      name: 'home_bottom_view_section_title',
      desc: '',
      args: [],
    );
  }

  /// `The way to\n Happiness`
  String get home_bottom_view_section_subtitle {
    return Intl.message(
      'The way to\n Happiness',
      name: 'home_bottom_view_section_subtitle',
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
      Locale.fromSubtags(languageCode: 'zh'),
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
