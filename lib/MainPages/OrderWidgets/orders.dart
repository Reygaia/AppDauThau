import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  //query multiple order from the database
  String orderID = '123';

  String getStatus(String orderID) {
//query to get Order ID
    String queryID = '';
    String status = '';

    if (queryID == orderID) {
//get queryID status from the database
      status = 'Status from queryID';
    }
    return status;
  }

//query to get Destination and phone number from the order
  String address = '';
  String phoneNumber = '';
//query to get item delivering description
  String desc = '';

  @override
  Widget build(BuildContext context) {
    //example of getting a status of order
    String itemStatus = getStatus(orderID);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          //change into a list of order
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    //Order overall
                    children: [
                      Text('Order ID: $orderID'),
                    ],
                  ),
                ),
                Text('Status: $itemStatus'),
              ],
            ),
            //Order detail
            const Divider(),
            const SizedBox(
              child: Row(
                children: [
                  Text('Destination: Address and phone number'),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('1st Description of item delivering '),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text('2nd Description of item delivering '),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
