import 'package:flutter/material.dart';
import 'package:sleepfit/common/color.manager.dart';

import 'common/routes.manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SleepFit',
      //system theme
      // themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Poppins",
          scaffoldBackgroundColor: ColorManager.white),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
