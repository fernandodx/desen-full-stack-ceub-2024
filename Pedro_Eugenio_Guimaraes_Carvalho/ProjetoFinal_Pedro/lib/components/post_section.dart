import 'package:app2/models/models.dart';
import 'package:flutter/material.dart';
class PostSection extends StatelessWidget {
  const PostSection({super.key, required List<Post> posts});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Posts de usuários",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];

              return SizedBox(
                width: 300,
                  child: SingleChildScrollView(
                    child: Card(
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
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
                                    color: Colors.greenAccent,
                                  ))
                            ],
                          ),
                        ),
                      ),

                        ListTile(
                          title: Text(
                            "Post feito a" + post.timestamp + " minutos atrás...",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          subtitle: Text(
                            post.comment,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          onTap: () {
                            print("Clicou no post de id ${post.id}");
                          },
                      )

                    ],
                  ),
                ),
                  )
              );
            },
          ),
        )
      ],
    );
  }
}