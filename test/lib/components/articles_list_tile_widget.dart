import 'dart:math';
import 'package:expansiontile/modules/home/model/articles_response_model.dart';
import 'package:flutter/material.dart';

class ArticlesListWidget extends StatelessWidget {
  const ArticlesListWidget({
    Key? key,
    required this.articles,
  }) : super(key: key);
  final Results articles;

  static String getInitials(String artical) => artical.isNotEmpty
      ? artical.trim().split(' ').map((l) => l[0]).take(1).join()
      : 'NA';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            getInitials(articles.title).toUpperCase(),
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              articles.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              articles.byline,
              style: TextStyle(color: Colors.grey, fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  articles.source,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  articles.publishedDate,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            )
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 12,
        ),
      ),
    );
  }
}
