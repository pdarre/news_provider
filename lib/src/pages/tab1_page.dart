import 'package:flutter/material.dart';
import 'package:news_provider/src/services/news_service.dart';
import 'package:provider/provider.dart';

class Tab1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return Center(
      child: ListView.builder(
        itemCount: newsService.getLista.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: newsService.getLista[index].urlToImage != null
                  ? NetworkImage(newsService.getLista[index].urlToImage)
                  : null,
            ),
            title: Text(newsService.getLista[index].title),
          );
        },
      ),
    );
  }
}
