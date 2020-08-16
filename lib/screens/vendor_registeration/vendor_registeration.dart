import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Ignite/components/my_bottom_nav_bar.dart';
import 'package:Ignite/screens/vendor_registeration/components/body.dart';

class VendorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  
  
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // title: Text(
      //             'Local',
      //             style: Theme.of(context).textTheme.headline5.copyWith(
      //                 color: Colors.white, fontWeight: FontWeight.bold),
      //           ),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
