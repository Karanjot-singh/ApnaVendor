import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.05,
      child: Stack(
        children: <Widget>[
          Container(
          //   padding: EdgeInsets.only(
          //     left: kDefaultPadding,
          //     right: kDefaultPadding,
          //     bottom: 36 + kDefaultPadding,
          //   ),
            height: size.height * 0.05 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }
}
