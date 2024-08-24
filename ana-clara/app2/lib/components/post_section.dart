import 'package:app2/models/models.dart';
import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {
  final List<Post> posts;

  const PostSection({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Atividades",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 500,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];

              return SizedBox(
                width: 100,
                child: Card(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(post.profileImageUrl),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text(
                                post.comment,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              subtitle: Text("${post.timestamp} mins ago",
                                  style: Theme.of(context).textTheme.bodySmall),
                              onTap: () {
                                print("Clicou em $post.name");
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
