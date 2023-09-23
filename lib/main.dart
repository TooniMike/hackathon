import 'package:flutter/material.dart';

import 'screens/screens.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xFF150E28),
      debugShowCheckedModeBanner: false,
      title: 'GetLinked Hackathon 1.0',
      theme: ThemeData(
        primaryColor: const Color(0xFF150E28),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF150E28)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

