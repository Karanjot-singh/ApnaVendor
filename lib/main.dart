// import 'package:ApnaVendor/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:ApnaVendor/constants.dart';
import 'package:ApnaVendor/screens/home/home_screen.dart';
// import 'package:ApnaVendor/screens/vendor_registeration/vendor_registeration.dart';
import 'package:ApnaVendor/screens/dummy/components/vendor_registeration.dart';



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
      title: 'ApnaVendor',
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
