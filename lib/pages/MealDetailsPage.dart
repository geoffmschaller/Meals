import 'package:Meals/components/organisms/MealHeader.dart';
import 'package:Meals/components/organisms/MealIngredients.dart';
import 'package:Meals/components/organisms/MealSteps.dart';
import 'package:Meals/models/MealObject.dart';
import 'package:flutter/material.dart';

class MealDetailsPage extends StatelessWidget {
  static String routeName = "/mealsDetails";

  @override
  Widget build(BuildContext context) {
    final MealObject _meal =
        ModalRoute.of(context).settings.arguments as MealObject;

    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: Text(_meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MealHeader(_meal),
            MealIngredients(_meal),
            MealSteps(_meal),
          ],
        ),
      ),
    ));
  }
}
