import 'package:app2/api/explore_data.dart';
import 'package:app2/components/category_section.dart';
import 'package:app2/components/post_section.dart';
import 'package:flutter/material.dart';

import '../components/restaurant_section.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  late MockService mockService;

  @override
  void initState() {
    super.initState();
    mockService = MockService();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final restaurants = snapshot.data?.restaurants ?? [];
          final categories = snapshot.data?.categories ?? [];
          final posts = snapshot.data?.friendPosts ?? [];

          return CustomScrollView(
            slivers: [
              // RestaurantSection
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Text(
                    "Comida perto de mim",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: RestaurantSection(restaurants: restaurants),
              ),

              // CategorySection
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Text(
                    "Categorias",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CategorySection(categories: categories),
              ),

              // PostSection
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Text(
                    "Atividade dos amigos",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              PostSection(posts: posts),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
