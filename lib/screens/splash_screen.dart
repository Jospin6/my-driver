import 'package:flutter/material.dart';

import '../authentication/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Login())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Mon chauffeur", style: TextStyle(fontSize: 25, color: Colors.black),)
      ),
    );
  }
}
