import 'package:appbanhang/MainPages/OrderWidgets/orders.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  ScrollController test = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            const Expanded(
              child: Text('Orders'),
            ),
            GestureDetector(
              //Calender filter function
              onTap: () {},
              child: const Row(
                children: [
                  Icon(Icons.calendar_month_rounded),
                  Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(mainAxisSize: MainAxisSize.max, children: [
        SingleChildScrollView(
          controller: test,
          child: const Column(
            children: [
              Order(),
            ],
          ),
        ),
      ]),
    );
  }
}
