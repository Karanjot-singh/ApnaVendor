import 'package:Ignite/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:Ignite/constants.dart';
import 'package:Ignite/screens/home/home_screen.dart';
// import 'package:Ignite/screens/vendor_registeration/vendor_registeration.dart';


import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '<Ignite>',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      // home:DetailsScreen(),
      // home: VendorScreen(),

    );
  }
}
