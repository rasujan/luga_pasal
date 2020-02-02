import 'package:flutter/material.dart';
import 'package:luga/providers/cart.dart';
import 'package:luga/screens/cart_screen.dart';
import 'package:luga/widgets/badge.dart';
import 'package:provider/provider.dart';

//import 'package:luga/providers/products.dart';
//import 'package:provider/provider.dart';

import '../widgets/product_grid.dart';

enum FilterOptions { Favorites, All }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFav = false;

  @override
  Widget build(BuildContext context) {
//    final productsContainer = Provider.of<Products>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: Text("Luga Pasal"),
          actions: <Widget>[
            PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favorites) {
                    _showOnlyFav = true;
                  } else {
                    _showOnlyFav = false;
                  }
                });
              },
              icon: Icon(
                Icons.more_vert,
              ),
              itemBuilder: (_) =>
              [
                PopupMenuItem(
                    child: Text('Favorite'), value: FilterOptions.Favorites),
                PopupMenuItem(child: Text('All'), value: FilterOptions.All),
              ],
            ),
            Consumer<Cart>(builder: (_, cart, ch) =>
                Badge(
                  child: ch,
                  value: cart.itemCount.toString(),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartScreen.routeName);
                  },
                ),
            )


          ]),
      body: ProductsGrid(_showOnlyFav),
    );
  }
}
