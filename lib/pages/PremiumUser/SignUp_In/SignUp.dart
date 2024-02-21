import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retplan/pages/PremiumUser/SignUp_In/Confirmation/Confirm.dart';
import 'package:retplan/pages/PremiumUser/SignUp_In/SignIn.dart';
import '../../Utilites/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscurePassword = true;

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
              width: sizeW,
              margin: const EdgeInsets.only(
                left: 25,
                right: 30,
              ),
              height: sizeH * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/_signup.png"),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment(0.9, 3.0))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome!",
                      style:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                  ])),
          Container(
            width: sizeW,
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
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
                    hintText: "Name",
                    prefixIcon: Icon(
                      Icons.person_pin_rounded,
                      color: Colors.red[200],
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: ColorsDesign.mainColor, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorsDesign.mainColor, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )),
                ),
                SizedBox(height: 15),
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
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: Colors.red[200],
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: ColorsDesign.mainColor, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorsDesign.mainColor, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2)),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      prefixIcon:
                          Icon(Icons.password_rounded, color: Colors.red[200]),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: ColorsDesign.mainColor, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorsDesign.mainColor, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    obscureText: _obscurePassword,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
              ],
            ),
          ),
          SizedBox(
            height: sizeH * 0.08,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConfirmationPage()),
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
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: sizeW * 0.2),
          RichText(
              text: TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                  children: [
                TextSpan(
                    text: " Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()))),
              ])),
        ]));
  }
}
