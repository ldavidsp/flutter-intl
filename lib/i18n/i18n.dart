import 'package:flutter/material.dart';

class HFLocalizations {
  final String locale;
  HFLocalizations(this.locale);

  static const LocalizationsDelegate<HFLocalizations> delegate = _HFLocalizationsDelegate();

  static HFLocalizations of(BuildContext context) {
    return Localizations.of<HFLocalizations>(context, HFLocalizations);
  }

  static Map<String, Map<String, String>> value = {
    'en': {
      'title': 'Homeflow Flutter',
      'welcome': 'Welcome to Flutter Homeflow'
    },
    'es': {
      'title': 'Homeflow Flutter',
      'welcome': 'Welcome to Flutter Homeflow'
    },
  };


  String get title {
    return value[locale]['title'];
  }

  String get welcome {
    return value[locale]['welcome'];
  }
}


class _HFLocalizationsDelegate extends LocalizationsDelegate<HFLocalizations> {
  const _HFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['es', 'en'].contains(locale.languageCode);
  }

  @override
  Future<HFLocalizations> load(Locale locale) async {
    return HFLocalizations(locale.languageCode);
//    var lang =  HFLocalizations(locale.languageCode);
//    await lang.load();
//    return lang;
  }

  @override
  bool shouldReload(LocalizationsDelegate<HFLocalizations> old) {
    return false;
  }

}
