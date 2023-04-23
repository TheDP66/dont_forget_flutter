import 'package:dont_forget_app/common/theme/dark_theme.dart';
import 'package:dont_forget_app/common/theme/light_theme.dart';
import 'package:dont_forget_app/feature/home/pages/home_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dont Forget',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
