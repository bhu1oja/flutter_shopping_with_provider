import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/Cart.dart';
import 'package:provider_state_management/providers/Orders.dart';
import 'package:provider_state_management/providers/Products.dart';
import 'package:provider_state_management/screens/cartScreen.dart';
import 'package:provider_state_management/screens/myHomeScree.dart';
import 'package:provider_state_management/screens/orderScreen.dart';
import 'package:provider_state_management/screens/product_detail.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider( // we are creating new instanc of Product(), so used this approach
        create: (ctx) => Products(),),
         ChangeNotifierProvider( // we are creating new instanc of Cart(), so used this approach
        create: (ctx) => Cart(),),
        ChangeNotifierProvider( // we are creating new instanc of order(), so used this approach
        create: (ctx) => Orders(),),
      ],
      // return ChangeNotifierProvider.value( 
      //   value:  Products(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomeScreen(),
        routes: {
          ProductDetail.routeName : (ctx) => ProductDetail(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreen.routeName: (ctx) => OrderScreen()
        },
        
      ),
    );
  }
}
