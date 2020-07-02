import 'package:flutter/material.dart';
import 'package:medium_app/models/categoryHeader_builder.dart';
import 'package:medium_app/models/fromHistory_content.dart';
import 'package:medium_app/models/topicCard_content.dart';
import 'package:medium_app/topic_data.dart';

TopicData topicData = TopicData();

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
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
            children: <Widget>[
              BuildCategoryHeader(
                categoryHeading: 'Topics for you',
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 230.0,
                child: Wrap(
                  children: <Widget>[
                    TopicCard(0),
                    TopicCard(1),
                    TopicCard(2),
                    TopicCard(3),
                    TopicCard(4),
                    TopicCard(5),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              BuildCategoryHeader(
                categoryHeading: 'Based on\nyour Reading History',
              ),
              SizedBox(
                height: 12.0,
              ),
              FromHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
