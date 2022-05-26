import 'package:digikala/digitalproducts.dart';
import 'package:digikala/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pagepruduct.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8c6aad),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text("List Of Products", style: TextStyle(wordSpacing: 2, fontSize: 20)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                  child : Column(
                    children: [
                      ProductDetails("images/laptop.jpg","Mobile","ProductDetails"),
                      ProductDetails("images/laptop.jpg","Mobile","ProductDetails"),
                      ProductDetails("images/laptop.jpg","Mobile","ProductDetails"),
                      ProductDetails("images/laptop.jpg","Mobile","ProductDetails"),
                      ProductDetails("images/laptop.jpg","Mobile","ProductDetails"),
                      ProductDetails("images/laptop.jpg","Mobile","ProductDetails"),
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
