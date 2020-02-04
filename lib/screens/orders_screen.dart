import 'package:flutter/material.dart';
import 'package:luga/providers/orders.dart' show Orders;
import 'package:luga/widgets/app_drawer.dart';
import 'package:provider/provider.dart' ;
import '../widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = './orders';
  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: ordersData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(ordersData.orders[i]),
      ),
    );
  }
}
