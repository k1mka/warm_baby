import 'package:flutter/material.dart';

import 'order.dart';

class MyOrders extends StatelessWidget {
  final List<Order> orders = [
    Order(location: "Ул. Плановаяю 73 82 отделение", data: DateTime.now()),
    Order(location: "Ул. Волонтерская 115 отделение", data: DateTime.now()),
    Order(location: "Ул. Иллича 12/в 24 отделение", data: DateTime.now()),
    Order(location: "Ул. Новобоварская 14 отделение", data: DateTime.now()),
  ];

  MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Divider(
          height: 24,
          thickness: 8,
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: orders.length,
          itemBuilder: (__, index) => Center(
              child: Card(
            shadowColor: Colors.black,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(orders[index].location),
              subtitle: Text(orders[index].data.toString()),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
            ),
          )),
        ),
      ],
    );
  }
}
