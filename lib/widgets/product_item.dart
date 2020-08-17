import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/Cart.dart';
import 'package:provider_state_management/providers/Product.dart';
import 'package:provider_state_management/screens/product_detail.dart';



class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String image;

  // ProductItem(this.id, this.title, this.image);
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen: false);  //rerender whole buildContext 
    final cart = Provider.of<Cart>(context, listen: false);
   return 
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
            child: GridTile(
          child: GestureDetector(
            onTap: (){Navigator.of(context).pushNamed(ProductDetail.routeName, arguments: product.id);},
          child: Image.network(product.imageURL, fit: BoxFit.cover,)),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading:Consumer<Product>( //rerender only subpart where data changes 
      builder: (ctx, product, child //child dont rebuild , it is for constant widget or values
      ) => IconButton(icon: Icon(product.isFavourite ? Icons.favorite : Icons.favorite_border, color: Theme.of(context).accentColor), onPressed:() {product.togglefavStatus();}),),
            trailing: IconButton(icon: Icon(Icons.shopping_cart,color: Theme.of(context).accentColor), onPressed: (){cart.addItem(product.id, product.price, product.title);}),
            title: Text(product.title,textAlign: TextAlign.center,),),
        ),
      
        
    );
  }
}