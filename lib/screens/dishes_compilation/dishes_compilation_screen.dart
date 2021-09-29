import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/screens/cart/components/check_out_card.dart';

import 'components/body.dart';

class DishesCompilationCard extends StatelessWidget {
  static String routeName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Популярное",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
