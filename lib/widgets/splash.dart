import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/main/welcome screen');
    });
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CustomLoading(),
      ),
    );
  }
}