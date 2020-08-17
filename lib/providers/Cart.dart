
import 'package:flutter/material.dart';


class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
   @required this.id, 
   @required this.title, 
   @required this.quantity,
    @required this.price});

}
class Cart with ChangeNotifier{

  Map<String, CartItem> _items ={};

  Map<String , CartItem> get items{
    return {..._items};
  }

int get itemCount {
  return  _items == null ? 0 : _items.length;
}

double get totalAmount {
  double total = 0.0;
  _items.forEach((key, value) { 
    total += value.price * value.quantity;
  });
  return total;
}
  void addItem (String pid, double price, String title){
    if(_items.containsKey(pid)){
      //change quantity
      _items.update(pid, (existingcartItem) => CartItem(id: existingcartItem.id, title: existingcartItem.title, quantity: existingcartItem.quantity + 1, price: existingcartItem.price));
    }else{
      _items.putIfAbsent(pid,() => CartItem(id: DateTime.now().toString(), title: title,quantity: 1,  price: price));
    }
  notifyListeners();
  }

void removeItem(String pId){
    _items.remove(pId);
    notifyListeners();
}

void clearcart(){
  _items = {};
  notifyListeners();
}
}