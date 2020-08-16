import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'header_with_searchbox.dart';
// import 'vendor_categories.dart';
import 'title_box.dart';

class VendorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HeaderWithSearchBox(size: size),

          Titlebox(title: "Be a part of this change!", press: () {WebView(initialUrl: "https://github.com/",javascriptMode: JavascriptMode.unrestricted,);}),
          // vendorFeatured(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
