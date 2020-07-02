import 'package:flutter/material.dart';
import 'package:medium_app/screens/explore_screen.dart';
import '../styles.dart';

class TopicCard extends StatelessWidget {
  final int index;
  TopicCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.all(10.0),
      width: 150,
      height: 55.0,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(topicData.topicItems[index].topicUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 15.0,
              offset: Offset(0.0, 8.0),
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter,
                colors: [
                  Colors.grey.shade700,
                  Colors.transparent,
                ],
              ),
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              width: 150,
              height: 55.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  topicData.topicItems[index].topicName,
                  style: topicTextStyle(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
