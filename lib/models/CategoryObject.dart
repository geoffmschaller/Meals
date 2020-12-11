import 'package:flutter/material.dart';

class CategoryObject {
  final String id;
  final String title;
  final Color color;

  const CategoryObject({
    @required this.id,
    @required this.title,
    this.color = Colors.amber,
  });
}
