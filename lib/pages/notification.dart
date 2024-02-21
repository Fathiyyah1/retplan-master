import 'package:flutter/material.dart';
import 'package:retplan/pages/Utilites/colors.dart';
import 'package:retplan/pages/PremiumUser/Homepage1.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsDesign.mainColor,
        title: Text('Notifications'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: ColorsDesign.buttonBackgroundColor,
              size: 36,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Homepage1())); //navigate back to expenses page function
            },
          ),
        ),
      ),
      body: Center(
        child: Text('Notifications Page'),
      ),
    );
  }
}
