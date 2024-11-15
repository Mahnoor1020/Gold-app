import 'package:flutter/material.dart';
import 'dart:async';

import 'package:gold_app/gold-app-screen.dart';

void main() {
  runApp(GoldCalculatorApp());
}

class GoldCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Set timer for 3 seconds and navigate to GoldCalculatorScreen
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GoldApp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Center padding around the entire content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              // Center Image
              Image.asset(
                'lib/assets/goldcalculatorlogo.jpeg', // Path to your image asset
                height: 100,
              ),
              SizedBox(height: 20),
              // App Title
              Text(
                'GOLD CALCULATOR',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              // Credit Text at the Bottom
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Developed by MAHNOOR',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

