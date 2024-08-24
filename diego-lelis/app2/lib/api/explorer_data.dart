import '../models/food_category.dart';
import '../models/post.dart';
import '../models/restaurant.dart';

class ExplorerData {
  final List<Restaurant> restaurants;
  final List<FoodCategory> categories;
  final List<Post> friendPosts;

  ExplorerData(this.restaurants, this.categories, this.friendPosts);
}

class MockService {
  Future<ExplorerData> getExploreData() async {
    final restaurants = await _getRestaurants();
    final categories = await _getCategories();
    final posts = await _getPosts();

    return ExplorerData(restaurants, categories, posts);
  }

  Future<List<Restaurant>> _getRestaurants() async {
    await Future.delayed(Duration(seconds: 1));
    return restaurants;
  }

  Future<List<FoodCategory>> _getCategories() async {
    await Future.delayed(Duration(seconds: 1));
    return categories;
  }

  Future<List<Post>> _getPosts() async {
    await Future.delayed(Duration(seconds: 1));
    return posts;
  }
}
