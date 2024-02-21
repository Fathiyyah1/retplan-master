import 'package:flutter/material.dart';
import 'package:retplan/pages/PremiumUser/CalcFeature/Calculator1.dart';
import 'package:retplan/pages/PremiumUser/CalcFeature/Calculator3.dart';
import 'package:retplan/pages/PremiumUser/CalcFeature/Calculator4.dart';
import 'package:retplan/pages/PremiumUser/Homepage1.dart';
import 'package:retplan/pages/PremiumUser/investPage.dart';

import 'PremiumUser/CalcFeature/Calculator2.dart';
import 'Utilites/colors.dart';

class CalculatorsPage extends StatelessWidget {
  const CalculatorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(18.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage1()));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorsDesign.mainColor,
                  shadows: <Shadow>[
                    Shadow(color: Colors.black12, blurRadius: 15.0)
                  ],
                  size: 34,
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Investment())); //navigate to notifications page
                },
                icon: Icon(
                  Icons.moving_outlined,
                  color: ColorsDesign.mainColor,
                  shadows: <Shadow>[
                    Shadow(color: Colors.black12, blurRadius: 15.0)
                  ],
                  size: 44,
                ),
              ),
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Calculators",
              style: TextStyle(
                color: ColorsDesign.mainColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(color: Colors.black12, blurRadius: 15.0)
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  //calculator for the salary and expenses
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SalaryCalculator()));
                  },
                  child: Container(
                    child: ContentOfContainer(
                      "Expenses Calculator",
                      'assets/images/expenses.png',
                    ),
                    decoration: BoxDecoration(
                        color: ColorsDesign.mainColor,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [ShadowContainer()]),
                    height: 210,
                  ),
                ),
                SizedBox(
                  height: sizeH * 0.04,
                ),
                GestureDetector(
                  //calculator for the salary and expenses
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Calculator2()));
                  },
                  child: Container(
                    child: ContentOfContainer(
                      "Events Calculator",
                      'assets/images/expenses.png',
                    ),
                    decoration: BoxDecoration(
                        color: ColorsDesign.mainColor,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [ShadowContainer()]),
                    height: 210,
                  ),
                ),
                SizedBox(
                  height: sizeH * 0.04,
                ),
                GestureDetector(
                  //calculator for the salary and expenses
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Calculator3()));
                  },
                  child: Container(
                    child: ContentOfContainer(
                      "Retirement Calculator",
                      'assets/images/expenses.png',
                    ),
                    decoration: BoxDecoration(
                        color: ColorsDesign.mainColor,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [ShadowContainer()]),
                    height: 210,
                  ),
                ),
                SizedBox(
                  height: sizeH * 0.04,
                ),
                GestureDetector(
                  //calculator for the salary and expenses
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Calculator4()));
                  },
                  child: Container(
                    child: ContentOfContainer(
                      "Investment Calculator",
                      'assets/images/expenses.png',
                    ),
                    decoration: BoxDecoration(
                        color: ColorsDesign.mainColor,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [ShadowContainer()]),
                    height: 210,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  //A method that return a shadow to containers
  BoxShadow ShadowContainer() {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 4,
      offset: Offset(0, 2),
    );
  }

  Widget ContentOfContainer(String TextContent, String ImagePathsContent) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          TextContent,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
        ),
        Image.asset(
          ImagePathsContent,
          width: 130,
          height: 130,
        )
      ],
    );
  }
}
