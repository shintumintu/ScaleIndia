import 'package:Scaleindia/Models/route_names.dart';
import 'package:Scaleindia/Pages/fifth_page.dart';
import 'package:Scaleindia/Pages/first_page.dart';
import 'package:Scaleindia/Pages/fourth_page.dart';
import 'package:Scaleindia/Pages/second_page.dart';
import 'package:Scaleindia/Pages/third_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case FirstViewRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: FirstPage(),
      );
    case SecondViewRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: SecondPage(),
      );
      case ThirdViewRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: ThirdPage(),
      );
       case FourthViewRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: FourthPage(),
      );
      case FifthViewRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: FifthPage(),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child:
                        Text('There was a technical error ${settings.name}')),
              ));
  }
}

PageRoute _pageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(name: routeName), builder: (_) => viewToShow);
}
