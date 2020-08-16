import 'package:flutter/material.dart';
import '../../.././constants.dart';

import 'vendor_featured.dart';
import 'header_with_searchbox.dart';
import 'vendor_categories.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Categories", press: () {}),
          vendorCategories(),
          TitleWithMoreBtn(title: "Featured", press: () {}),
          vendorFeatured(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
