import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http_zaprosy_1urok/provider/post_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<postProvider>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: context.read<postProvider>().getPosts,
              icon: Icon(
                Icons.download,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: vm.posts.length,
          itemBuilder: (context, index) => ItemWidget(
            title: vm.posts[index].title,
            subtitle: vm.posts[index].subtitle,
            id: vm.posts[index].id.toString(),
          ),
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.id});

  final String title;
  final String subtitle;
  final String id;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        maxLines: 3,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        maxLines: 4,
      ),
      minLeadingWidth: 24,
      leading: Text(
        id,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          height: 2,
        ),
      ),
    );
  }
}
