import 'package:flutter/material.dart';
import '../../../constants.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
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
          
          Titlebox(
              title: "Be a part of this change!",),
          // vendorFeatured(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
