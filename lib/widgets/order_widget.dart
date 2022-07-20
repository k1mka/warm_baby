import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderWidget extends StatelessWidget {
  final Order order;

  const OrderWidget({Key? key, required this.order}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shadowColor: Colors.black,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          title: Text(order.location),
          subtitle: Text(order.data.toString()),
          trailing: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
