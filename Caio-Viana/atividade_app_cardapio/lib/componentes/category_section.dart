import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/models/food_category.dart';

class CategorySection extends StatelessWidget {
  final List<FoodCategory> categories;

  const CategorySection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Categorias",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final categorie = categories[index];

              return SizedBox(
                width: 250,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                        child: AspectRatio(
                          aspectRatio: 2,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                child: Image.asset(
                                  categorie.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          categorie.name,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        subtitle: Text(
                          "${categorie.numberOfRestaurants} places",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        onTap: () {
                          print("Clicou em ${categorie.name}");
                        },
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
