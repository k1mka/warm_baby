import 'package:flutter/material.dart';
import 'package:warm_baby/search_widget.dart';
import 'package:warm_baby/my_orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showOrders = false;

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
            if (showOrders) MyOrders(),
          ],
        ),
      ),
    );
  }
}
