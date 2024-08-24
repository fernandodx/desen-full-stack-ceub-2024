import 'package:flutter/material.dart';
import '../models/post.dart';

class PostSection extends StatelessWidget {
  final List<Post> posts;

  const PostSection({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 16.0),
          child: Text(
            "Posts dos Amigos",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];

              return Container(
                width: 300,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(post.profileImageUrl),
                          radius: 40,
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                post.comment,
                                style: Theme.of(context).textTheme.bodyLarge,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 3.0),
                              Text(
                                '${post.timestamp} minutos atrás',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
