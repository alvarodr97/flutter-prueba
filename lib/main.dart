import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/routes/routes.dart';

import 'package:componentes/src/pages/alert_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Arabic, no country code
        // ... other locales the app supports
      ],
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}