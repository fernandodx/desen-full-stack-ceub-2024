import 'package:app2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostSection extends StatelessWidget {

  final List<Post> posts;

  const PostSection({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final post = posts[index];
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(post.profileImageUrl),
                  ),
                  title: Text(
                    post.comment,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text("${post.timestamp} min atrás"),
                  onTap: () {
                    print("Clicou em ${post.comment}");
                  },
                ),
              ],
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
