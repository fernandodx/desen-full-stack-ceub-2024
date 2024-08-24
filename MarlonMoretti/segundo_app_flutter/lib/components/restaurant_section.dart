import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantSection extends StatelessWidget {

  final List<Restaurant> restaurants;


  const RestaurantSection({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        Text("Comida perto de mim", style: Theme.of(context).textTheme.titleLarge,),
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: restaurants.length,
            itemBuilder: (context, index){

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
                                Image.asset(restaurant.imageUrl, fit: BoxFit.fill),
                                Positioned(
                                  top: 4.0,
                                  right: 4.0,
                                  child: IconButton(
                                      onPressed: () => {},
                                      icon: Icon(Icons.favorite),
                                    iconSize: 30,
                                    color: Colors.redAccent,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(restaurant.name, style: Theme.of(context).textTheme.titleSmall),
                          subtitle: Text(restaurant.attributes, style: Theme.of(context).textTheme.bodySmall),
                          onTap: (){
                            print("Clicou no ListTile, Restaurante: ${restaurant.name}");
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
