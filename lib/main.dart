import 'package:Meals/pages/CategoriesPage.dart';
import 'package:Meals/pages/MealDetailsPage.dart';
import 'package:Meals/pages/MealsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Colors.grey[300],
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            )),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        CategoriesPage.routeName: (context) => CategoriesPage(),
        MealsPage.routeName: (context) => MealsPage(),
        MealDetailsPage.routeName: (context) => MealDetailsPage(),
      },
    );
  }
}
