import 'package:Meals/models/MealObject.dart';
import 'package:flutter/material.dart';

class MealHeader extends StatelessWidget {
  final MealObject _meal;

  MealHeader(this._meal);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child: Image.network(
              _meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Text(
              _meal.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: const EdgeInsets.all(10),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
