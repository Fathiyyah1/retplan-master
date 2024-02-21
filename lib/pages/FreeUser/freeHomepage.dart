import 'package:flutter/material.dart';
import 'package:retplan/pages/Utilites/colors.dart';
import 'package:retplan/pages/notification.dart';
import 'package:retplan/pages/note.dart';

class FreeHomepage extends StatefulWidget {
  const FreeHomepage({Key? key}) : super(key: key);

  @override
  _FreeHomepageState createState() => _FreeHomepageState();
}

class _FreeHomepageState extends State<FreeHomepage> {
  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(18.0),
            child: IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: ColorsDesign.mainColor,
                shadows: <Shadow>[
                  Shadow(color: Colors.black12, blurRadius: 15.0)
                ],
                size: 36,
              ),
              onPressed: () {
                //open drawer function
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NotificationsPage())); //navigate to notifications page
                },
                icon: Icon(
                  Icons.notifications,
                  color: ColorsDesign.mainColor,
                  shadows: <Shadow>[
                    Shadow(color: Colors.black12, blurRadius: 15.0)
                  ],
                  size: 34,
                ),
              ),
            )
          ],
        ),
        body: Column(children: [
          SizedBox(
            height: sizeH * 0.04,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: ColorsDesign.mainColor,
                borderRadius: BorderRadius.circular(
                    50.0), // Adjust the value as per your needs
              ),
              width: sizeW * 0.9,
              height: (sizeH * 0.3) - 9.0,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: FractionalTranslation(
                      translation: Offset(0.0,
                          0.3), // Adjust the value to move the black container down
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorsDesign.buttonBackgroundColor,
                          borderRadius: BorderRadius.circular(
                              40.0), // Adjust the value as per your needs
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(130, 190, 188, 188)
                                  .withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0,
                                  2), // Adjust the values to control the shadow position
                            ),
                          ],
                        ),
                        height: (sizeH * 0.2) - 25.8,
                        width: sizeW * 0.8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: sizeH * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.all(34.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Notes",
                  style: TextStyle(
                      fontSize: sizeH * 0.03,
                      fontFamily: null,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            blurRadius: 10.0,
                            color: Colors.black26,
                            offset: Offset(2.0, 2.0))
                      ],
                      color: ColorsDesign.titleColor),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_outline_rounded,
                      color: ColorsDesign.mainColor,
                      size: 40,
                      shadows: <Shadow>[
                        Shadow(color: Colors.black26, blurRadius: 15.0)
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: sizeH * 0.1,
          ),
        ]));
  }
}
