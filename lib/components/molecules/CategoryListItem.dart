import 'package:Meals/models/CategoryObject.dart';
import 'package:Meals/pages/MealsPage.dart';
import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  final CategoryObject _category;

  CategoryListItem(this._category);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(MealsPage.routeName, arguments: _category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _category.color.withOpacity(.7),
              _category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => selectCategory(context),
    );
  }
}
