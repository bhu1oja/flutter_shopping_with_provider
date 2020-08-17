import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/Cart.dart';
import 'package:provider_state_management/providers/Orders.dart';
import "../widgets/cart_item.dart" as ci;

class CartScreen extends StatelessWidget {
   static const routeName = "/cart-screen";
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Screen"),
      ),
      body: Column( 
        children: [
          Card(
            margin: const EdgeInsets.all(15.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Text("Total", style: TextStyle(fontSize: 20),),
                Spacer(),
                Chip(label: Text('\$ ${cart.totalAmount}'), backgroundColor: Theme.of(context).primaryColor,),
                FlatButton(onPressed: (){
                  Provider.of<Orders>(context,listen: false).addOrder(cart.items.values.toList(), cart.totalAmount); 
                  cart.clearcart();}, 
                  child: Text("ORDER NOW", style: TextStyle(color: Theme.of(context).primaryColor),))
              ],),),
          ),
          Expanded(child: ListView.builder(
            itemCount: cart.itemCount,
            itemBuilder: (ctx, i) =>ci.CartItem(id: cart.items.values.toList()[i].id, title: cart.items.values.toList()[i].title,pId: cart.items.keys.toList()[i], quantity: cart.items.values.toList()[i].quantity, price: cart.items.values.toList()[i].price )))
        ], 
      ),
    );
  }
}