import 'dart:async';
import 'package:flutter/material.dart';
import 'package:retplan/pages/Pagination/pagination.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PaginationPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 87, 206, 176),
      body: Center(
          child: Image.asset(
        "assets/images/RetPlanlogo.png",
        height: 160,
        width: 160,
        fit: BoxFit.contain,
      )),
    );
  }
}
