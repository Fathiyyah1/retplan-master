import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:retplan/pages/PremiumUser/Homepage1.dart';
import 'package:retplan/pages/PremiumUser/SignUp_In/Pass_update/ForgetPass.dart';
import 'package:retplan/pages/PremiumUser/SignUp_In/SignUp.dart';
import 'package:retplan/pages/Utilites/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: ColorsDesign.mainColor,
        body: Column(
          children: [
            SizedBox(
              height: sizeH * 0.1,
            ),
            Container(
              width: sizeW,
              height: sizeH * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/loginform.png"),
                      fit: BoxFit.contain)),
            ),
            Container(
              width: sizeW,
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Again!",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign into your account",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
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
                  SizedBox(height: 16),
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
                        hintText: "Enter your password",
                        prefixIcon: Icon(Icons.password_rounded,
                            color: Colors.red[200]),
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
                    height: 9,
                  ),
                  Row(
                    //row widget to help in making the text in the right place
                    children: [
                      Expanded(
                        child: Container(), //empty container
                      ),
                      GestureDetector(
                        onTap: () {
                          // move to ForgetingPassword page here
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetingPassword()));
                        },
                        child: Text(
                          "Forget the password?",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: sizeH * 0.04,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage1()),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Signed In successfully'),
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
                    "Sign in",
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
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                    children: [
                  TextSpan(
                      text: " Sign Up",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp())))
                ]))
          ],
        ));
  }
}
