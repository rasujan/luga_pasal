
import 'package:flutter/material.dart';
import './screens/products_overview_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luga Pasal',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.blueAccent,
      ),
      home: ProductsOverviewScreen(),
    );
  }
}
