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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            post.profileImageUrl,
                            width: 50.0, // Defina o tamanho da imagem
                            height: 50.0, // Defina o tamanho da imagem
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10.0), // Espaçamento entre a imagem e o texto
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                post.comment,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              SizedBox(height: 5.0), // Espaçamento entre o texto e o timestamp
                              Text(
                                "${post.timestamp} mins ago",
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
        )
      ],
    );
  }
}
