import 'package:claudzap/common/theme/dark_theme.dart';
import 'package:claudzap/common/theme/light_theme.dart';
import 'package:claudzap/feature/auth/pages/login_page.dart';
import 'package:claudzap/feature/auth/pages/verification_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ClaudZap',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
        home: const VerificationPage());
  }
}
