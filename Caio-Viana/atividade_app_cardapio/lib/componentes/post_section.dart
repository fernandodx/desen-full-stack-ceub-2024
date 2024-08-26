import 'package:atividade2_sala/models/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/models/post.dart';

class PostSection extends StatelessWidget {
  final List<Post> posts;

  const PostSection({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Atividade de amigos ",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return Container(
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //foto
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 70,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(600),
                          child: Image.asset(
                            post.profileImageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    //mensagem
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 180,
                          child: Text(
                            post.comment,
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Text(
                            "${post.timestamp} min atrás",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
