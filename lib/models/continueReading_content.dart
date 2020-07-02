import 'package:flutter/material.dart';
import 'package:medium_app/screens/home_screen.dart';
import 'package:medium_app/styles.dart';

class ContinueReading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18.0, top: 5.0, left: 25.0, right: 25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 15.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        child: InkWell(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            articleData.fromReading[0].articleTitle,
                            style: readingTitleTextStyle(),
                          ),
                          Text(
                            articleData.fromReading[0].articleAuthor +
                                ' in ' +
                                articleData.fromReading[0].articlePub,
                            style: readingPubTextStyle(),
                          ),
                        ],
                      ),
                      Container(
                        child: Image(
                          width: 30.0,
                          height: 30.0,
                          image: AssetImage(
                            articleData.fromReading[0].articlePubUrl,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 7.0,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
