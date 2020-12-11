import 'package:Meals/models/MealObject.dart';
import 'package:flutter/material.dart';

class MealSteps extends StatelessWidget {
  final MealObject _meal;

  MealSteps(this._meal);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(),
          Text(
            "Steps:",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              children: _meal.steps.map((step) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('$step'),
                );
              }).toList(),
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
