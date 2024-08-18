import 'package:flutter/material.dart';
import 'package:segundo_app_flutter/api/explore_data.dart';
import 'package:segundo_app_flutter/components/category_section.dart';
import 'package:segundo_app_flutter/components/post_section.dart';
import 'package:segundo_app_flutter/components/restaurant_section.dart';
import '../models/restaurant.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({super.key});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {

  late MockService mockService;

  @override
  void initState() {
    super.initState();

    mockService = MockService();

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: mockService.getExplorerData(), builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.done){

        // Capturando dados da API Mock
        final restaurants = snapshot.data?.restaurants ?? [];
        final categories = snapshot.data?.categories ?? [];
        final posts = snapshot.data?.friendPosts ?? [];

        return ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            RestaurantSection(restaurants: restaurants),
            CategorySection(categories: categories,),
            PostSection(posts: posts)
          ],
        );
      }else{
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
