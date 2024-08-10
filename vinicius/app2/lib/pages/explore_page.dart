import 'package:app2/components/restaurant_section.dart';
import 'package:app2/models/restaurant.dart';
import 'package:flutter/widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        RestaurantSection(restaurants: restaurants),

    ],);
  }
}
