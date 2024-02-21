import 'package:flutter/material.dart';

class Category {
  final String name;
  final Color? textColor;
  final String image;

  Category(
    this.name,
    this.textColor,
    this.image,
  );
}

List<Category> category = categoryData
    .map(
      (item) => Category(
        item['name'] as String,
        item['textColor'] as Color?,
        item['image'] as String,
      ),
    )
    .toList();

var categoryData = [
  {
    'name': 'Technology',
    'textColor': Colors.blue,
    'image': "assets/images/Rectangle 151.png",
  },
  {
    'name': 'Health',
    'textColor': Colors.green,
    'image': "assets/images/Rectangle 152.png",
  },
  {
    'name': 'Science',
    'number':  const Color(0xff003B72),
    'image': "assets/images/Rectangle 153.png",
  },
  {
    'name': 'Fitness',
    'number': const Color(0xffC121FA),
    'image': "assets/images/Rectangle 154.png",
  },
  {
    'name': 'Technology',
    'textColor': Colors.blue,
    'image': "assets/images/Rectangle 155.png",
  },
  {
    'name': 'Technology',
    'textColor': Colors.blue,
    'image': "assets/images/Rectangle 156.png",
  },
];
