import 'package:flutter/material.dart';
import 'package:flutter_ai_writing_assistant/api_keys.dart';
import 'package:flutter_ai_writing_assistant/src/core/app_theme.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'src/screens/home_screen.dart';

void main() {
  Gemini.init(apiKey: ApiKeys.gemini_api_key);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StyleSnap',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
