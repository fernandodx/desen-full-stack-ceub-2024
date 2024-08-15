import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/restaurant.dart';

class RestaurantSection extends StatelessWidget {

  final List<Restaurant> restaurants;

  const RestaurantSection({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Comida perto de mim',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: restaurants.length,
              itemBuilder: (context, index) {
                final restaurant = restaurants[index];

            return SizedBox(
              width: 300,
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
                            Container(child: Image.asset(restaurant.imageUrl, fit: BoxFit.cover)),
                            Positioned(
                                top: 4.0,
                                right: 4.0,
                                child: IconButton(onPressed: () {  },
                                  icon:  Icon(Icons.favorite),
                                  iconSize: 30,
                                  color: Colors.blueGrey,
                                ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        restaurant.name,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      onTap: (){ print("clicou em ${restaurant.name}");},
                    ),
                  ],
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}
