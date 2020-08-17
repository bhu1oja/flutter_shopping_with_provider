import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/Cart.dart';
import 'package:provider_state_management/screens/cartScreen.dart';
import 'package:provider_state_management/widgets/app_drawer.dart';
import 'package:provider_state_management/widgets/badge.dart';
import 'package:provider_state_management/widgets/products_grid.dart';


class MyHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(title: Text("Homepage"),
      actions: [
        Consumer<Cart>(builder: (_, cart, ch) => 
        Badge(child: ch,
         value: cart.itemCount.toString()),
         child:  IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){Navigator.of(context).pushNamed(CartScreen.routeName);}),
        ),

      ],),
      body: ProductsGrid(),
      drawer: AppDrawer(),
    );
    return scaffold;
  }
}

