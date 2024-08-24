import 'package:flutter/material.dart';
import '../models/food_category.dart';

class CategorySection extends StatelessWidget {

  final List<FoodCategory> categories;

  const CategorySection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        Text("Por categoria", style: Theme.of(context).textTheme.titleLarge,),
        SizedBox(
          height: 230,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index){

                final foodCategory = categories[index];


                return SizedBox(
                    width: 300,
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                            child: AspectRatio(
                              aspectRatio: 2,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(foodCategory.imageUrl, fit: BoxFit.fill),
                                  Positioned(
                                    top: 4.0,
                                    right: 4.0,
                                    child: IconButton(
                                      onPressed: () => {},
                                      icon: const Icon(Icons.favorite),
                                      iconSize: 30,
                                      color: Colors.redAccent,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(foodCategory.name, style: Theme.of(context).textTheme.titleSmall),
                            subtitle: Text(foodCategory.numberOfRestaurants.toString(), style: Theme.of(context).textTheme.bodySmall),
                            onTap: (){
                              print("Clicou no ListTile, Categoria: ${foodCategory.name}");
                            },
                          )
                        ],
                      ),
                    )
                );
              }
          ),
        )
      ],
    );
  }
}
