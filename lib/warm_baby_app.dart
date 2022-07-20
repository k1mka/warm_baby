import 'package:flutter/material.dart';
import 'package:warm_baby/widgets/search_widget.dart';

import 'models/order.dart';
import 'widgets/order_list.dart';

class WarmBabyApp extends StatefulWidget {
  const WarmBabyApp({Key? key}) : super(key: key);

  @override
  State<WarmBabyApp> createState() => _WarmBabyAppState();
}

class _WarmBabyAppState extends State<WarmBabyApp> {
  bool showOrders = false;
  final List<Order> orders = [
    Order(location: "Ул. Плановаяю 73 82 отделение", data: DateTime.now()),
    Order(location: "Ул. Волонтерская 115 отделение", data: DateTime.now()),
    Order(location: "Ул. Иллича 12/в 24 отделение", data: DateTime.now()),
    Order(location: "Ул. Новобоварская 14 отделение", data: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('W.a.r.m Baby'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SearchWidget(
              onTap: () {
                setState(() {
                  showOrders = !showOrders;
                });
              },
            ),
            const Divider(
              height: 24,
              thickness: 8,
            ),
            if (showOrders) OrderList(orders: orders),
          ],
        ),
      ),
    );
  }
}
