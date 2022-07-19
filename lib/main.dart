import 'package:flutter/material.dart';
import 'package:warm_baby/widget_order_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('W.a.r.m Baby'),
          centerTitle: true,
        ),
        body: MyOrder(),
      )


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
