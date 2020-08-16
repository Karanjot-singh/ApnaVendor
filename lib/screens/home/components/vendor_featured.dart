import 'package:flutter/material.dart';

import '../../../constants.dart';

class vendorFeatured extends StatelessWidget {
  const vendorFeatured({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturedCard(
            image: " Revolutionize The Unorganised Sector",
            press: () {},
          ),

          
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
      child: Container(alignment: Alignment.center,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding,
          bottom: kDefaultPadding,
        ),
        width: size.width*0.9 ,
        height: 95,
        decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: AssetImage(image),
          // ),
          
        ),
        child: Column(
          children: [
            Text(image,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text("- The Team",
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
