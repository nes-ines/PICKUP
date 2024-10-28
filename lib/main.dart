import 'package:flutter/material.dart';
import 'package:uts_papb_julice/screens/welcome_screen.dart';
import 'package:uts_papb_julice/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: lightMode,
      home: const WelcomeScreen(),
    );
  }
}