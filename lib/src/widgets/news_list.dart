import 'package:flutter/material.dart';
import 'package:news_provider/src/models/news_models.dart';
import 'package:news_provider/src/theme/theme.dart';

class NewsList extends StatelessWidget {
  final List<Article> news;

  NewsList({this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.news.length,
        itemBuilder: (context, index) {
          return _News(
            news: news[index],
            index: index,
          );
        });
  }
}

class _News extends StatelessWidget {
  final Article news;
  final int index;

  const _News({
    @required this.news,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return _TopBarCard(
      index: this.index,
      news: this.news,
    );
  }
}

class _TopBarCard extends StatelessWidget {
  final Article news;
  final int index;

  _TopBarCard({this.news, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Text(
            '${index + 1} .',
            style: TextStyle(color: miTema.accentColor),
          ),
          Text(
            '${news.source.name}.',
          )
        ],
      ),
    );
  }
}
