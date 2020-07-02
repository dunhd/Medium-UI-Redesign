import 'package:flutter/material.dart';
import 'package:medium_app/screens/home_screen.dart';
import '../styles.dart';

class FromHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 670,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: articleData.readingHistory.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return Container(
              margin: EdgeInsets.only(
                  bottom: 12.0, top: 5.0, left: 12.0, right: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 8.0,
                    offset: Offset(0.0, 7.0),
                  ),
                ],
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(25.0),
                  onTap: () {},
                  child: ClipRRect(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    articleData
                                        .readingHistory[index].articleTitle,
                                    style: readingTitleTextStyle(),
                                  ),
                                  Text(
                                    articleData.readingHistory[index]
                                            .articleAuthor +
                                        ' in ' +
                                        articleData
                                            .readingHistory[index].articlePub,
                                    style: readingPubTextStyle(),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    articleData
                                            .readingHistory[index].articleDate +
                                        ' - ' +
                                        articleData
                                            .readingHistory[index].articleTime,
                                    style: readingDateTextStyle(),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        width: 65.0,
                                        height: 60.0,
                                        image: AssetImage(
                                          articleData
                                              .readingHistory[index].articleUrl,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2.0),
                                      child: Image(
                                        width: 20.0,
                                        height: 25.0,
                                        image: AssetImage(
                                          articleData.readingHistory[index]
                                              .articlePubUrl,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
