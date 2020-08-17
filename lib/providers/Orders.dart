

import 'package:flutter/material.dart';
import 'package:provider_state_management/providers/Cart.dart';

class Orderitem{
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  Orderitem({@required this.id,@required this.amount,@required this.products,@required this.dateTime});
  


}

class Orders with ChangeNotifier{
  final List<Orderitem> _orders =[];

  List get orders{
    return [..._orders];
  }

  void addOrder(List<CartItem>cartProducts, double totalAmount){
    _orders.insert(0, Orderitem(id: DateTime.now().toString(), amount: totalAmount, products: cartProducts, dateTime: DateTime.now())); //insert add at the begining of the list while add adds the end of the list
  notifyListeners(); 
  }


}