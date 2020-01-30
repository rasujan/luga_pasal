import 'package:flutter/material.dart';

import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Luga Pasal"),
        ),
        body: ProductsGrid());
  }
}
