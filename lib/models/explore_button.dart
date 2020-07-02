import 'package:flutter/material.dart';
import 'package:medium_app/screens/explore_screen.dart';
import '../styles.dart';

class ExploreTopics extends StatelessWidget {
  const ExploreTopics({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 70.0, right: 70.0, bottom: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ExploreScreen();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Explore Topics',
                    style: readingTitleTextStyle(),
                  ),
                  Container(
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
