import 'package:flutter/material.dart';
import 'package:medium_app/models/categoryHeader_builder.dart';
import 'package:medium_app/models/continueReading_content.dart';
import 'package:medium_app/models/dailyRead_content.dart';
import 'package:medium_app/models/explore_button.dart';
import 'package:medium_app/models/fromNetwork_content.dart';
import '../article_data.dart';

ArticleData articleData = ArticleData();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var cardAspectRatio = 1.8;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _HomeScreenState extends State<HomeScreen> {
  var currentPage = articleData.dailyRead.length - 1.0;
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: articleData.dailyRead.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(Icons.notifications_none),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BuildCategoryHeader(
                categoryHeading: 'Your Daily Read',
              ),
              Stack(
                children: <Widget>[
                  DailyRead(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: articleData.dailyRead.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  )
                ],
              ),
              BuildCategoryHeader(categoryHeading: 'From your Network'),
              FromNetworkContent(),
              BuildCategoryHeader(
                categoryHeading: 'Continue Reading',
              ),
              // ContinueReadingContent(),
              ContinueReading(),
              ExploreTopics(),
            ],
          ),
        ),
      ),
    );
  }
}
