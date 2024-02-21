import 'package:flutter/material.dart';
import 'package:retplan/pages/Utilites/colors.dart';

import '../notification.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hasNotification = false; // Set to true if there is a notification

  // Function to open the drawer when the list icon is pressed
  void openDrawer() {
    Scaffold.of(context).openDrawer();
  }

  // Function to navigate to another page when the notification icon is pressed
  void navigateToNotificationsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotificationsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
