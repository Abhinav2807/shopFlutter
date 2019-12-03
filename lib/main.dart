import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/providers/orders.dart';
import 'package:shop_flutter/screens/edit_product_screen.dart';
import './screens/carts_screen.dart';
import './providers/cart.dart';

import './screens/user_products.dart';
import './screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';
import './providers/products_provider.dart';
import './screens/orders_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value( 
          value: Products(),),
      ChangeNotifierProvider.value(
        value: Cart(),
      ),
      ChangeNotifierProvider.value(
        value: Orders(),
      )
    ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName:(ctx)=>CartScreen(),
          OrdersScreen.routeName:(ctx)=>OrdersScreen(),
          UserProductsScreen.namedRoute:(ctx)=>UserProductsScreen(),
          EditProductScreen.nameRoute:(ctx)=>EditProductScreen(),
        },
      ),
    );
  }
}
