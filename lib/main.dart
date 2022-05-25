import 'package:digikala/digitalproducts.dart';
import 'package:digikala/products_categorization.dart';
import 'package:digikala/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "googlesans"),
      debugShowCheckedModeBanner: false,
      home: Screen1(

      ),
    );
  }
}
