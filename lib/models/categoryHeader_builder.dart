import 'package:flutter/material.dart';

import '../styles.dart';

class BuildCategoryHeader extends StatelessWidget {
  final String categoryHeading;

  BuildCategoryHeader({@required this.categoryHeading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            categoryHeading,
            overflow: TextOverflow.ellipsis,
            style: categoryHeaderTextStyle(),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
