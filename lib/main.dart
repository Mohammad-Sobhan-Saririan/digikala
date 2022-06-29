import 'package:digikala/Pages/useraddproduct.dart';
import 'package:digikala/alaki.dart';
import 'package:digikala/digitalproducts.dart';
import 'package:digikala/products_categorization.dart';
import 'package:digikala/screen1.dart';
import 'package:digikala/sign_in_page.dart';
import 'package:flutter/material.dart';

import 'Pages/pageofalldetails.dart';
import 'Signin_up_pages/sign_up_screen.dart';
import 'eachproductlist.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

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
