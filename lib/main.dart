import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  List<String> orders = ['Заказ №1', 'Заказ №2', 'Заказ №3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('W.a.r.m Baby'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ...orders
                .map((e) => Text(
                      e,
                      style: TextStyle(fontSize: 50),
                    ))
                .toList(),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 34,
                  ),
                  onPressed: () {
                    print('Поиск');
                  },
                ),
                const Text(
                  'Search',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black12,
          onPressed: () {},
          child: const Text('add'),
        ),
      ),
    );
  }
}
