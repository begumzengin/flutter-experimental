import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

class LocalizationSample extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return const MaterialApp(
      title: 'localizations sample app',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('tr', ''),
      ],
      //home: LocalizationsHome(),
    );
  }
}
