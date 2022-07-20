import 'package:flutter/material.dart';
import 'package:warm_baby/models/order.dart';

import 'order_widget.dart';

class OrderList extends StatelessWidget {
  final List<Order> orders;
  const OrderList({Key? key, required this.orders}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: orders.length,
      itemBuilder: (__, index) => OrderWidget(
        order: orders[index],
      ),
    );
  }
}
