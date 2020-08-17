import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/products.dart';

class ProductDetail extends StatelessWidget {
  static const routeName = "/product-detail";
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments;
  final loadedProduct =   Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      // appBar: AppBar(title: Text(loadedProduct.title),),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
           floating: false,
            expandedHeight: 300,
            stretch: true,
            stretchTriggerOffset: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(loadedProduct.title),
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                // StretchMode.blurBackground
              ],
              background: Image.network(loadedProduct.imageURL, fit: BoxFit.cover,),
            ),
          ),
        SliverFillRemaining(
          fillOverscroll: true,
          child: Text(loadedProduct.description),
        )
        ],
      ),
    );
  }
}