import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderWidget extends StatefulWidget {
  final Order order;

  const OrderWidget({Key? key, required this.order}) : super(key: key);

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  void initState() {
    super.initState();
    print('InitState');
  }

  bool _isEditIconShown = true;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      shadowColor: Colors.black,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        enabled: _isEditIconShown,
        title: Text(widget.order.location),
        subtitle: Text(widget.order.data.toString()),
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => setState(() => _isEditIconShown = !_isEditIconShown),
        ),
      ),
    ));
  }
}
