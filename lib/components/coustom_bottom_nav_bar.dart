import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/products_type/cookie_page.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/shopping_list/shopping_list.dart';

import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingList())),
              ),
              IconButton(
                icon: Icon(Icons.add_circle_outline_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.bookmark),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CookiePage())),
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
