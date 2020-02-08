import 'dart:ui';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HFLocalizations {
  HFLocalizations(this.locale);

  final Locale locale;

  static HFLocalizations of(BuildContext context) {
    return Localizations.of<HFLocalizations>(context, HFLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Homeflow Technologies, Inc',
      'welcome': 'Welcome to Homeflow',
    },
    'es': {
      'title': 'Homeflow Technologies, Inc',
      'welcome': 'Bienvenido a Homeflow',
    },
  };

  String get title => _localizedValues[locale.languageCode]['title'];
  String get welcome => _localizedValues[locale.languageCode]['welcome'];
}

class HFLocalizationsDelegate
    extends LocalizationsDelegate<HFLocalizations> {
  const HFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<HFLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of HFLocalizations.
    return SynchronousFuture<HFLocalizations>(HFLocalizations(locale));
  }

  @override
  bool shouldReload(HFLocalizationsDelegate old) => false;
}
