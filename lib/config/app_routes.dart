import 'package:app_resto/page/home/home_page.dart';
import 'package:app_resto/page/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The route is : ${settings.name}');

    switch (settings.name) {
      case '/':
        return LoginPage.route();
      case HomePage.routeName:
        return HomePage.route();
      case LoginPage.routeName:
        return LoginPage.route();

        break;
      default:
        return _errorRoute();
    }
  }
  
  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(title: Text('error'),),
        ), 
        settings: RouteSettings(name: '/error'));
  }

}
