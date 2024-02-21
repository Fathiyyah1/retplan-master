import 'package:flutter/material.dart';
import 'package:retplan/pages/Utilites/colors.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Row(),
        SizedBox(
          height: sizeH * 0.04,
        ),
        Row(),
        SizedBox(
          height: sizeH * 0.04,
        ),
        Container()
      ]),
    );
  }
}
