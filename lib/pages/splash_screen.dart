import 'dart:async';
import 'package:fiverr_app/account/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RichText(
          text: const TextSpan(
            text: 'Fiverr',
            style: TextStyle(
              fontSize: 60, 
              color: Color.fromARGB(255, 1, 51, 2), 
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: '.',
                style: TextStyle(
                  fontSize: 100,
                  color: Color.fromARGB(255, 107, 226, 111)
                )
              )
            ]
          ),
        )
      ),
    );
  }
}
