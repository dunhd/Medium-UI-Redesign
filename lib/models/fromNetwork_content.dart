import 'package:flutter/material.dart';
import 'package:medium_app/screens/home_screen.dart';
import 'package:medium_app/screens/article_page.dart';
import '../styles.dart';

class FromNetworkContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 200.0,
        color: Colors.grey[200],
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: articleData.dailyRead.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 20.0),
                width: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            articleData.fromNetwork[index].articleUrl),
                        fit: BoxFit.cover),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 10.0),
                      ),
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: FractionalOffset.bottomCenter,
                      end: FractionalOffset.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 10.0),
                        child: Text(
                          articleData.fromNetwork[index].articleTitle,
                          style: articleTitleTextStyle(),
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                            ),
                            child: Container(
                              width: 115.0,
                              child: Flexible(
                                child: Text(
                                  'In ' +
                                      articleData.fromNetwork[index].articlePub,
                                  overflow: TextOverflow.ellipsis,
                                  style: publisherNameTextStyle(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                              right: 7.0,
                            ),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(articleData
                                      .fromNetwork[index].articlePubUrl),
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
