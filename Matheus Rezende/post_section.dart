import 'package:app2/models/models.dart';
import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {
  final List<Post> posts;

  const PostSection({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Comentários",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8), // Espaçamento entre o título e a lista
          ...posts.map((post) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(post.profileImageUrl),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.comment,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${post.timestamp} min atrás",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                onTap: () {
                  print("Clicou no comentário de ${post.id}");
                },
              ),
            );
          }).toList(), // Mapeando a lista de posts para widgets
        ],
      ),
    );
  }
}
