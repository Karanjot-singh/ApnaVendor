import 'package:flutter/material.dart';

import '../../../constants.dart';

class vendorFeatured extends StatelessWidget {
  const vendorFeatured({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.offline_bolt),
              labelText: "Enter Product ",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                  width: 5,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.check_circle_outline),
                splashColor: Colors.blue,
                tooltip: "Enter",
                onPressed: () {},
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.monetization_on),
              labelText: "Enter Sales ",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                  width: 5,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.check_circle_outline),
                splashColor: Colors.blue,
                tooltip: "Enter",
                onPressed: () {},
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_pin_circle),
              labelText: "Enter Area ",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                  width: 5,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.check_circle_outline),
                splashColor: Colors.blue,
                tooltip: "Enter",
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding,
          bottom: kDefaultPadding,
        ),
        width: size.width * 0.9,
        height: 95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: AssetImage(image),
          // ),
        ),
        child: Column(
          children: [
            Text(
              image,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "- The Team",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
