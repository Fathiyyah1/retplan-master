import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:retplan/pages/FreeUser/freeHomepage.dart';
import 'package:retplan/pages/Pagination/pagination.dart';

import '../Utilites/colors.dart';
import '../PremiumUser/home_page.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorsDesign.mainColor,
      body: Column(children: [
        SizedBox(
          height: sizeH * 0.1,
        ),
        Container(
          child: Container(
            width: 40,
            height: 40,
            child: Stack(children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaginationPage()),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ).marginOnly(left: sizeW * 0.07),
              ),
            ]),
          ),
          width: sizeW,
          height: sizeH * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/otp-illustrations.png"),
                  fit: BoxFit.contain)),
        ),
        SizedBox(
          height: sizeH * 0.02,
        ),
        Container(
          width: sizeW,
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              "Welcome ",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: sizeH * 0.02,
            ),
            Text(
              "Glad to have you on board!",
              style: TextStyle(fontSize: 16, color: Colors.black38),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)),
                  ]),
              child: TextField(
                  decoration: InputDecoration(
                hintText: "Enter your name",
                prefixIcon: Icon(
                  Icons.person_pin_rounded,
                  color: Colors.red[200],
                  size: sizeW * 0.07,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(color: ColorsDesign.mainColor, width: 1.0)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorsDesign.mainColor, width: 1.0)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              )),
            ),
            SizedBox(
              height: sizeH * 0.09,
            ),
            Stack(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FreeHomepage()),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Joined successfully'),
                    ),
                  );
                },
                child: Container(
                  width: sizeW * 0.5,
                  height: sizeH * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/images/btntrans.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Start",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ])
          ]),
        )
      ]),
    );
  }
}
