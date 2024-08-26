import 'package:app2/models/restaurant.dart';

import '../models/food_category.dart';
import '../models/post.dart';

class ExploreData {
  final List<Restaurant> restaurants;
  final List<FoodCategory> categories;
  final List<Post> friendPosts;

  ExploreData(this.restaurants, this.categories, this.friendPosts);

}

class MockService {

  Future<ExploreData> getExploreData() async {
    final restaurants = await _getRestaurants();
    final categories = await _getCategories();
    final posts = await _getPosts();
    return ExploreData(restaurants, categories, posts);
  }

  Future <List<FoodCategory>> _getCategories() async {
    await Future.delayed(const Duration(seconds: 1));
    return categories;
  }

  Future <List<Restaurant>> _getRestaurants() async {
    await Future.delayed(const Duration(seconds: 1));
    return restaurants;
  }

  Future <List<Post>> _getPosts() async {
    await Future.delayed(const Duration(seconds: 1));
    return posts;
  }

}