import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../models/food_category.dart';

class CategoriesSection extends StatelessWidget {

  final List<FoodCategory> categories;

  const CategoriesSection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Explore Categories',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          category.imageUrl,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        category.name,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}