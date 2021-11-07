import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Список покупок",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: getListView(context));
  }

  Widget getListView(BuildContext context) {
    var listView = ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(
              Icons.fact_check,
              color: Colors.green,
            ),
            title: Text("Блюдо дня"),
            subtitle: Text("Собрание популярных блюд"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CartScreen()));
            }),

        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.purple,
          ),
          title: Text("Подборка от знаменитостей"),
          subtitle: Text("Описание"),
        ),
        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.yellow.shade700,
          ),
          title: Text("Популярное"),
          subtitle: Text("Описание"),
        ),
        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.yellow.shade700,
          ),
          title: Text("Быстрое приготовление"),
          subtitle: Text("Описание"),
        ),
        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.blue,
          ),
          title: Text("Диабетическое"),
          subtitle: Text("Описание"),
        ),
        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.blue,
          ),
          title: Text("Низкокалорийное"),
          subtitle: Text("Описание"),
        ),

//      Text("Yet another element in List"),

//      Container(color: Colors.red, height: 50.0,)
      ],
    );

    return listView;
  }
}
