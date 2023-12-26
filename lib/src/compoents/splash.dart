import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:todo/src/main/home.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  static const String _animation = "assets/animation/splash.json";

  @override
  State<splash_screen> createState() => _splash_screenState();
}

// ignore: camel_case_types
class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
            child: const home(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 1),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Lottie.asset(splash_screen._animation)],
        ));
  }
}