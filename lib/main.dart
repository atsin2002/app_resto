import 'package:app_resto/config/app_routes.dart';
import 'package:app_resto/config/theme.dart';
import 'package:app_resto/page/home/home_page.dart';
import 'package:app_resto/page/page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: LoginPage(),
      debugShowCheckedModeBanner: true,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LoginPage.routeName,
    );
  }
}
