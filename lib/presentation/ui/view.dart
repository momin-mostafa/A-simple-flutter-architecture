import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_flutter_tryout/presentation/state/view_model.dart';
import 'package:retrofit_flutter_tryout/presentation/ui/components/post.widget.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Posts"),
      ),
      body: ListView(
        children: [
          ...context.watch<ViewModel>().postList.map((element) {
            return PostWidget(post: element);
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<ViewModel>().getPost,
      ),
    );
  }
}
