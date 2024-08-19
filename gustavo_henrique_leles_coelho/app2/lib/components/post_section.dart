import 'package:app2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostSection extends StatelessWidget {
  final List<Post> posts;

  const PostSection({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Comentários",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];

              return SizedBox(
                width: 300,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                        child: AspectRatio(
                          aspectRatio: 2,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                child: Image.asset(
                                  post.profileImageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  top: 4.0,
                                  right: 4.0,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                    ),
                                    iconSize: 30,
                                    color: Colors.redAccent,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          post.comment,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        subtitle: Text(
                          post.timestamp + " mins ago",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        onTap: () {
                          print("Clicou em ${post.id}");
                        },
                      )
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
