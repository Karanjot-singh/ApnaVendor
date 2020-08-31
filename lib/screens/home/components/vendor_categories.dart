import 'package:flutter/material.dart';
import 'package:ApnaVendor/screens/details/details_screen.dart';

import '../../../constants.dart';

class vendorCategories extends StatelessWidget {
  const vendorCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          categoryCard(
            image: "assets/images/vegetable_vendor.png",
            title: "Vegetables",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          categoryCard(
            image: "assets/images/icecream_vendor.jpg",
            title: "Icecream",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          categoryCard(
            image: "assets/images/food_vendor.png",
            title: "Food",
            press: () {},
          ),
          categoryCard(
            image: "assets/images/tailor.png",
            title: "Other Utilities",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class categoryCard extends StatelessWidget {
  const categoryCard({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          
          GestureDetector(
            onTap: press,
            child: Container(
              width: 170,
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(children: [
                RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                  ],
                ),
              ),
              Image.asset(
            image,
            height: 75,
            width: 170,
            fit: BoxFit.contain,
          ),             ],),
            ),
            ),
        ],
      ),
    );
  }
}
