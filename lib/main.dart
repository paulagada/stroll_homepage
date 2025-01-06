import 'package:flutter/material.dart';
import 'package:stroll_interview/Screens/navigation_page.dart';
import 'package:stroll_interview/config/app_theme.dart';

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
      title: 'Stroll Interview',
      theme: appTheme,
      home: const NavigationPage(),
    );
  }
}
