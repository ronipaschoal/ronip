import 'package:flutter/material.dart';
import 'package:ronip/model/locale_model.dart';

class LocaleButtonWidget extends StatelessWidget {
  final ValueChanged<Locale> changeLocale;

  const LocaleButtonWidget({
    super.key,
    required this.changeLocale,
  });

  @override
  Widget build(BuildContext context) {
    if (Localizations.localeOf(context) == LocaleEnum.pt.locale) {
      return TextButton(
        onPressed: () => changeLocale(LocaleEnum.en.locale),
        child: Text(
          LocaleEnum.en.text,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
    return TextButton(
      onPressed: () => changeLocale(LocaleEnum.pt.locale),
      child: Text(
        LocaleEnum.pt.text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
