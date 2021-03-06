import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ApnaVendor/components/my_bottom_nav_bar.dart';
import 'package:ApnaVendor/screens/dummy/components/vbody.dart';

class VendorDummy extends StatelessWidget {
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
      title: Text(
        'नमस्ते आशा !',
        style: TextStyle(color: Colors.white)
            ),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
