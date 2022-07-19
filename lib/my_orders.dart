import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  final List<String> orders = ['Заказ №1', 'Заказ №2', 'Заказ №3'];

  MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...orders.map(
          (e) => Center(
            child: Text(
              e,
              style: const TextStyle(fontSize: 50),
            ),
          ),
        )
      ],
    );
  }
}
