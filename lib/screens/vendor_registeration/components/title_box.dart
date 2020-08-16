import 'package:flutter/material.dart';

import '../../../constants.dart';

class Titlebox extends StatelessWidget {
  const Titlebox({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          SizedBox(height: kDefaultPadding/2),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            color: kAccentColor,
            onPressed: press,
            child: Text(
              "Register Now",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/join.png",
              height: 350,
              width: 170,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
