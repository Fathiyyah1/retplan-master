import 'package:flutter/material.dart';
import 'package:retplan/pages/PremiumUser/SignUp_In/Pass_update/ResetPass.dart';
import 'package:retplan/pages/PremiumUser/SignUp_In/SignIn.dart';
import 'package:retplan/pages/Utilites/colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsDesign.mainColor,
          title: Text(
            "Settings",
            style: TextStyle(
                color: ColorsDesign.buttonBackgroundColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                height: sizeH * 0.07,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person_2_rounded,
                    color: ColorsDesign.mainColor,
                    size: 35,
                  ),
                  SizedBox(
                    width: sizeW * 0.04,
                  ),
                  Text("Account",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
              Divider(
                height: sizeH * 0.01,
                thickness: 0.6,
              ), //divider to make the line saparation
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Change Name",
                        style: TextStyle(fontSize: 19),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPass()));
                          },
                          icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                  SizedBox(
                    height: sizeH * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Passcode",
                        style: TextStyle(fontSize: 19),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPass()));
                          },
                          icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                  SizedBox(
                    height: sizeH * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Change Password",
                        style: TextStyle(fontSize: 19),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPass()));
                          },
                          icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: sizeH * 0.07,
              ),

              Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: ColorsDesign.mainColor,
                    size: 35,
                  ),
                  SizedBox(
                    width: sizeW * 0.04,
                  ),
                  Text("RetPlan App",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
              Divider(
                height: sizeH * 0.01,
                thickness: 0.6,
              ), //divider to make the line saparation
              SizedBox(
                height: sizeH * 0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FAQs",
                    style: TextStyle(fontSize: 19),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('FAQs'),
                            content: SingleChildScrollView(
                              child: Column(
                                children: [
                                  // content of the alertdialog that the
                                  Text('Question 1'),

                                  Text('Answer 1'),
                                  Divider(
                                    height: sizeH * 0.01,
                                    thickness: 0.6,
                                  ),
                                  Text('Question 2'),
                                  Text('Answer 2'),
                                  Divider(
                                    height: sizeH * 0.01,
                                    thickness: 0.6,
                                  ),
                                  Text('Question 3'),
                                  Text('Answer 3'),
                                  Divider(
                                    height: sizeH * 0.01,
                                    thickness: 0.6,
                                  ),
                                  Text('Question 4'),
                                  Text('Answer 4'),
                                  Divider(
                                    height: sizeH * 0.01,
                                    thickness: 0.6,
                                  ),
                                  // ...
                                  // Add more content as needed
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty
                                      .all<Color>(ColorsDesign
                                          .mainColor), // Set the desired color
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          15), // Set the desired radius
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Close',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 17),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
              SizedBox(
                height: sizeH * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 19),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Privacy Policy'),
                              content: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    // content of the alertdialog that the

                                    Divider(
                                      height: sizeH * 0.01,
                                      thickness: 0.6,
                                    ),
                                    SizedBox(
                                      height: sizeH * 0.01,
                                    ),
                                    Text(
                                      'Your data is in a safe place',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    // ...
                                    // Add more content as needed
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .all<Color>(ColorsDesign
                                            .mainColor), // Set the desired color
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15), // Set the desired radius
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Close',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 17),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
              /*  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dark/Light Mode',
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              ),
            */
              SizedBox(
                height: sizeH * 0.16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    label: Text(
                      "Sign Out",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    icon: Icon(
                      Icons.logout_rounded,
                      size: 23,
                    ),
                    backgroundColor: ColorsDesign.mainColor,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
