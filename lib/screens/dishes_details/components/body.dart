import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/size_config.dart';

import 'dishes_description.dart';
import 'top_rounded_container.dart';
import 'dishes_images.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DishesImages(),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              DishesDescription(
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        BodyTab(),
      ],
    );
  }
}

class BodyTab extends StatelessWidget {
  const BodyTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: <Widget>[
            Tab(
              text: 'Tutorials', // !!
            )
          ]),
        ),
      ),
    );
  }
}
