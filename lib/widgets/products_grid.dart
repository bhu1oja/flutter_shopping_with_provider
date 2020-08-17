import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/Product.dart';
import 'package:provider_state_management/providers/Products.dart';
import 'package:provider_state_management/widgets/product_item.dart';


class ProductsGrid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final productsData  = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3/2, crossAxisSpacing: 10, mainAxisSpacing: 10), 
      itemBuilder: (ctx, i) => 
     ChangeNotifierProvider.value( //use this for grid and list because deatch of data after leaving screen 
       value: products[i],  //we reuse product obj so we use .value
     child:  ProductItem(
       ),)
      );
  }
}