import 'package:Meals/models/MealObject.dart';
import 'package:Meals/pages/MealDetailsPage.dart';
import 'package:flutter/material.dart';

class MealListItem extends StatelessWidget {
  final MealObject _meal;

  MealListItem(this._meal);

  String get complexityText {
    switch (_meal.complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challending';
        break;
      case Complexity.Hard:
        return "Hard";
        break;
      default:
        return "";
    }
  }

  String get affordabilityText {
    switch (_meal.affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return "Luxurious";
        break;
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(MealDetailsPage.routeName, arguments: _meal);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    _meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      _meal.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  bottom: 10,
                  right: 10,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        _meal.duration.toString(),
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        complexityText,
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        affordabilityText,
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
