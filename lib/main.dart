// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true),
      home: SplashScreen(),
    );
  }
}
