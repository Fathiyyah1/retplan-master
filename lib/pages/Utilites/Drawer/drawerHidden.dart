import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:retplan/Reports.dart';
import 'package:retplan/pages/PremiumUser/Homepage1.dart';
import 'package:retplan/pages/Utilites/colors.dart';
import 'package:retplan/pages/notification.dart';

class drawerHidden extends StatefulWidget {
  const drawerHidden({Key? key}) : super(key: key);

  @override
  State<drawerHidden> createState() => _drawerHiddenState();
}

class _drawerHiddenState extends State<drawerHidden> {
  List<ScreenHiddenDrawer> _Pages = [];

  final TextStyle1 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: ColorsDesign.buttonBackgroundColor);
  @override
  void initState() {
    super.initState();

    _Pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "Home",
              baseStyle: TextStyle1,
              selectedStyle: TextStyle1,
              colorLineSelected: Colors.teal.shade900),
          Homepage1()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "Report",
              baseStyle: TextStyle1,
              selectedStyle: TextStyle1,
              colorLineSelected: Colors.teal.shade900),
          ReportsPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color.fromRGBO(115, 185, 176, 1),
      screens: _Pages,
      initPositionSelected: 0,
      //slidePercent: 10,
      contentCornerRadius: 50.0,
      backgroundColorAppBar: Colors.transparent,
      elevationAppBar: 0,
      leadingAppBar: IconButton(
        icon: Icon(
          Icons.menu_rounded,
          color: ColorsDesign.mainColor,
          size: 39,
        ),
        onPressed: () {},
      ),
      actionsAppBar: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsPage(),
                ),
              );
            },
            icon: Icon(
              Icons.notifications,
              color: ColorsDesign.mainColor,
              size: 39,
            ),
          ),
        ),
      ],
    );
  }
}
