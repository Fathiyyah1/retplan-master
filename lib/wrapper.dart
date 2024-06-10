import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:retplan/firebase_options.dart';
import 'package:retplan/firestore/read_data.dart';
import 'package:retplan/pages/PremiumUser/home_page.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({super.key});

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
          future: initApp(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}

Future initApp() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  return getUser("Fatheya");
}
