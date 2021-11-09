import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/size_config.dart';

import 'dishes_description.dart';
import 'top_rounded_container.dart';
import 'dishes_images.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DishesImages(),
              DishesDescription(
                pressOnSeeMore: () {},
              ),
              Container(
                child: TabBar(tabs: [
                  Tab(
                    child: Text(
                      "Отзывы",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Ингридиенты",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Рецепты",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      child: Column(
                        children: [],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [],
                      ),
                    ),
                    Container(
                        child: Column(
                      children: [
                        Text("ККал: 150, Ингридиентов: 6, Сумма: 1500 руб",
                            style: TextStyle(color: Colors.black87)),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/meat.jpg",
                              width: 64,
                              height: 64,
                            ),
                            Text(
                              "Мякоть\nсвинины",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            Image.asset(
                              "assets/images/five.png",
                              width: 48,
                              height: 48,
                            ),
                            Text(
                              "175 рублей",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 32,
                              width: 32,
                              child: SizedBox(
                                child: RoundedIconBtn(
                                  icon: Icons.remove,
                                  showShadow: true,
                                  press: () {},
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 4.0),
                              child: Text(
                                "200 гр.",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: RoundedIconBtn(
                                icon: Icons.add,
                                showShadow: true,
                                press: () {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: SizedBox(
                                  width: 128,
                                  height: 32,
                                  child: DefaultButton(
                                    text: "Изменить",
                                    press: () {},
                                  )),
                            ),
                          ],
                        ),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BodyTab extends StatelessWidget {
  const BodyTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
