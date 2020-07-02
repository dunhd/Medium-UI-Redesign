import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../styles.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  String articleInfo = '';
  fetchArticle() async {
    String textData = await rootBundle.loadString('assets/texts/article.txt');

    setState(() {
      articleInfo = textData;
    });
  }

  @override
  void initState() {
    fetchArticle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'This is the Title',
                      style: readingTitleTextStyle(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Author Name'),
                        Text('Article Date'),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(articleInfo),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
