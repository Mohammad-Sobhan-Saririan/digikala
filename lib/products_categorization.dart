import 'package:digikala/ClassOfProducts/Catergory.dart';
import 'package:digikala/ClassOfProducts/User.dart';
import 'package:digikala/ClassOfProducts/product.dart';
import 'package:digikala/digitalproducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'pagepruduct.dart';

class Category extends StatelessWidget {
  Category({Key key}) : super(key: key);
  User user = User("name", "lastName", "09133368689", "email", "assets/images/laptop.jpg");
  List<Product> list=[];

  @override
  Widget build(BuildContext context) {
    list = [
    Product(categoryy.Digital, Typee.Mobile, "Mobile", user, "assets/images/laptop.jpg", "123", []),
    Product(categoryy.Digital, Typee.Mobile, "Mobile", user, "assets/images/laptop.jpg", "1234", []),
    Product(categoryy.Digital, Typee.Mobile, "Mobile", user, "assets/images/laptop.jpg", "1235", []),
    Product(categoryy.Digital, Typee.Mobile, "Mobile", user, "assets/images/laptop.jpg", "1236", []),
  ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Color(0xFF8c6aad),
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            centerTitle: true,
            title: Text("List Of Products",
                style: TextStyle(wordSpacing: 2, fontSize: 20)),
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
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("Digital Categories", style: TextStyle(fontSize: 30)),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Mobile", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Laptop", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Camera", list),
                            ],
                          ),
                          scrollDirection: Axis.horizontal,
                        ),
                        Text("Clothing Products", style: TextStyle(fontSize: 30)),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Female", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Male", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Children", list),
                            ],
                          ),
                          scrollDirection: Axis.horizontal,
                        ),
                        Text("Digital Products", style: TextStyle(fontSize: 30)),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Book", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Stationery", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Music", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Handicrafts", list),
                            ],
                          ),
                          scrollDirection: Axis.horizontal
                        ),
                        Text("Digital Products", style: TextStyle(fontSize: 30)),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              ProductScreen(
                                  "assets/images/laptop.jpg", "SportingGoods", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "Sportswear", list),
                              ProductScreen(
                                  "assets/images/laptop.jpg", "TravelAccessories", list),

                            ],
                          ),
                          scrollDirection: Axis.horizontal,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
