import 'package:Meals/data/MealsData.dart';
import 'package:Meals/models/CategoryObject.dart';
import 'package:Meals/components/molecules/MealListItem.dart';
import 'package:flutter/material.dart';

class MealsPage extends StatelessWidget {
  static const routeName = '/meals';
  @override
  Widget build(BuildContext context) {
    final _category =
        ModalRoute.of(context).settings.arguments as CategoryObject;
    final _categoryMeals = MealsData.where((meal) {
      return meal.categories.contains(_category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealListItem(_categoryMeals[index]);
        },
        itemCount: _categoryMeals.length,
      ),
    );
  }
}
