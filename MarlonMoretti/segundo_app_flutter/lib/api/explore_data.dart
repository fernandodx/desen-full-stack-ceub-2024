import '../models/models.dart';
import '../models/post.dart';
import '../models/restaurant.dart';

class ExploreData {
  final List<Restaurant> restaurants;
  final List<FoodCategory> categories;
  final List<Post> friendPosts;

  ExploreData(this.restaurants, this.categories, this.friendPosts);


}

// Mock simulando uma recepção de dados via API ou Banco de Dados
class MockService{
  Future<ExploreData> getExplorerData() async{

    final restaurants = await _getRestaurants();
    final categories = await _getFoodCategory();
    final posts = await _getPost();

    return ExploreData(restaurants, categories, posts);
  }

  Future<List<FoodCategory>> _getFoodCategory() async{
    await Future.delayed(Duration(seconds: 1));
    return categories;
  }

  Future<List<Restaurant>> _getRestaurants() async{
    await Future.delayed(Duration(seconds: 1));
    return restaurants;
  }

  Future<List<Post>> _getPost() async{
    await Future.delayed(Duration(seconds: 1));
    return posts;
  }
}