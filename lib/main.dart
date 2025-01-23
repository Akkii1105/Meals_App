import 'package:flutter/material.dart';
import 'package:meals/screens/tabs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: App(),));
}

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: Color.fromARGB(255, 131, 35, 0), brightness: Brightness.dark),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontFamily: 'Lato',
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Lato',
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Lato',
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Lato',
      fontSize: 14,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Lato',
      fontSize: 20,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
    ),
  ),
);

class App extends StatelessWidget {
  const  App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: const TabsScreen());
  }
}
