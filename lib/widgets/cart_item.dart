import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/Cart.dart';

class CartItem extends StatelessWidget {
  String id;
  String title;
  String pId;
  int quantity;
  double price;

  CartItem({this.id, this.title, this.pId,this.quantity, this.price});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
          key: ValueKey(id),
          direction: DismissDirection.endToStart,
          onDismissed: (direcrtion){
            Provider.of<Cart>(context,listen: false).removeItem(pId);
          },
          background: Container(alignment: Alignment.centerRight,
          padding: const EdgeInsets.all(20),
           margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical:4.0 ),
           color: Theme.of(context).primaryColor, child: Icon(Icons.delete, color: Colors.white, size: 40,),),
          child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical:4.0 ),
        child: Padding(padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(child: FittedBox(child: Text('\$$price')),),
          title: Text(title),
          subtitle: Text('TOtal \$${price*quantity}'),
          trailing: Text('$quantity X'),
        ),
        ),
      ),
    );
  }
}