import 'package:flutter/material.dart';
import 'package:todo/src/compoents/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const splash_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
