import 'package:flutter/material.dart';
import 'package:luga/providers/cart.dart';
import 'package:luga/providers/orders.dart';
import 'package:luga/screens/cart_screen.dart';
import 'package:luga/screens/edit_product_screen.dart';
import 'package:luga/screens/orders_screen.dart';
import 'package:luga/screens/user_products_screen.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: Products(),),
          ChangeNotifierProvider.value(value: Cart(),),
          ChangeNotifierProvider.value(value: Orders(),),
        ],
        child: MaterialApp(

          title: 'Luga Pasal',
          theme: ThemeData(
            primarySwatch: Colors.green,
            accentColor: Colors.deepOrangeAccent,
            fontFamily: 'Lato',
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
          },
        ),
    );

  }
}
