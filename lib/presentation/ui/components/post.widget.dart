import 'package:flutter/material.dart';
import 'package:retrofit_flutter_tryout/model.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.post});

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.title ?? ''),
      subtitle: Text(post.body ?? ''),
    );
  }
}
