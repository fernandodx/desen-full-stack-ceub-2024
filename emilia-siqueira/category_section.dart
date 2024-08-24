import 'package:flutter/widgets.dart';
import 'package:app_novo/models/food_category.dart';
import 'package:app_novo/models/models.dart';
import 'package:flutter/material.dart';


class CategorySection extends StatelessWidget {
  final List<FoodCategory> categories;

  const CategorySection({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Categories',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 150.0, // Ajusta a altura para acomodar os textos e imagem
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(9.0),
                      child: Image.network(
                        category.imageUrl,
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      category.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '${category.numberOfRestaurants} places',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 10.0, // Fonte menor para o subtítulo
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}