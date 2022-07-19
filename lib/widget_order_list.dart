import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget{
  List<String> orders = ['Заказ №1', 'Заказ №2', 'Заказ №3'];

  MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
        ...orders
        .map((e) => Text(
      e,
      style: TextStyle(fontSize: 50),
    ))
    ],
    );
}
}