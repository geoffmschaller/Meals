import 'package:Meals/data/CategoryData.dart';
import 'package:Meals/components/molecules/CategoryListItem.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categoires'),
      ),
      body: GridView(
        children: CATEGORY_DATA.map((cat) {
          return CategoryListItem(cat);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
