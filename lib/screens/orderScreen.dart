import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/Cart.dart';
import 'package:provider_state_management/providers/Orders.dart';
import 'package:provider_state_management/widgets/app_drawer.dart';
import 'package:provider_state_management/widgets/order-item.dart';
import '../widgets/cart_item.dart' as ci;

class OrderScreen extends StatelessWidget {
   static const routeName = "/order-screen";
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Screen"),
      ),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx,i) => OrderItem(orderData.orders[i])),
        drawer: AppDrawer(),
    );
  }
}