import 'package:atividade2_sala/models/models/models.dart';

class ExplorerData {
  final List<Restaurant> restaurants;
  final List<FoodCategory> categories;
  final List<Post> friendPosts;

  ExplorerData(this.restaurants, this.categories, this.friendPosts);
}

class MockService {

  Future<ExplorerData> getExploreData() async {
    final restaurants = await _getRestaurants();
    final post = await _getPost();
    final categories = await _getCategories();

    return ExplorerData(restaurants, categories, post);
  }

  Future<List<FoodCategory>> _getCategories() async {
    await Future.delayed(Duration(seconds: 1));
    return categories;
  }

  Future<List<Restaurant>> _getRestaurants() async {
    await Future.delayed(Duration(seconds: 1));
    return restaurants;
  }

  Future<List<Post>> _getPost() async {
    await Future.delayed(Duration(seconds: 1));
    return posts;
  }
}
