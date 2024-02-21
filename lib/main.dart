import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retplan/cubit/app_cubit.dart';
import 'package:retplan/cubit/app_states.dart';
import 'package:retplan/pages/PremiumUser/Homepage1.dart';

import 'package:retplan/pages/PremiumUser/home_page.dart';
import 'package:retplan/pages/Pagination/pagination.dart';
import 'package:retplan/pages/Utilites/Drawer/drawerHidden.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: drawerHidden(),
      ),
    );
  }
}
