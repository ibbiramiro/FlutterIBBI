import 'package:flutter/material.dart';
import 'login_page.dart';
import 'login_pagev1.dart';

void main() {
  // runApp(const MainApp());
  runApp(const MaterialApp(home: LoginPageV1()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
