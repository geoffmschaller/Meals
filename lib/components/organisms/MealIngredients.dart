import 'package:flutter/material.dart';
import '../../models/MealObject.dart';

class MealIngredients extends StatelessWidget {
  final MealObject _meal;

  MealIngredients(this._meal);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(),
          Text(
            "Ingredients",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: _meal.ingredients.map((ing) {
                return Padding(
                  child: Text('- $ing'),
                  padding: const EdgeInsets.all(4.0),
                );
              }).toList(),
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
