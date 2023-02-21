import 'package:flutter/material.dart';

import '../String File/text_string.dart';
import 'Tab_your_order_screens/Tab_screen.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          Your_orders,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ordersStatusPage(),
          ]),
        ),
      ),
    );
  }
}
