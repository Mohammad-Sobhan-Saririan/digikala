import 'package:digikala/ClassOfProducts/Catergory.dart';
import 'package:digikala/ClassOfProducts/User.dart';
import 'package:digikala/ClassOfProducts/product.dart';
import 'package:digikala/digitalproducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'Pages/profilepage.dart';
import 'pagepruduct.dart';

class Category extends StatelessWidget {
  Category(this._user,{Key key}) : super(key: key);
  User _user ;
  List<Product> list=[];

  @override
  Widget build(BuildContext context) {
    list = [
    Product(categoryy.Digital, Typee.Mobile, "Mobile", _user, "assets/images/laptop.jpg", "12300000", []),
    Product(categoryy.Digital, Typee.Mobile, "Mobile", _user, "assets/images/laptop.jpg", "12340000", []),
    Product(categoryy.Digital, Typee.Mobile, "Mobile", _user, "assets/images/laptop.jpg", "12350000", []),
    Product(categoryy.Digital, Typee.Mobile, "Iphone 13 pro max 256G", _user, "assets/images/laptop.jpg", "1236000000000", []),
      Product(categoryy.Digital, Typee.Camera, "Mobile", _user, "assets/images/laptop.jpg", "12300000", []),
    Product(categoryy.Digital, Typee.Camera, "Mobile", _user, "assets/images/laptop.jpg", "12340000", []),
    Product(categoryy.Digital, Typee.Camera, "Mobile", _user, "assets/images/laptop.jpg", "12350000", []),
    Product(categoryy.Digital, Typee.Camera, "Iphone 13 pro max 256G", _user, "assets/images/laptop.jpg", "1236000000000", []),
  ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Color(0xFF8c6aad),
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.lightGreen,
            centerTitle: true,
            title: Text("List Of Products",
                style: TextStyle(wordSpacing: 2, fontSize: 20)),
              leading: IconButton(icon:Icon(Icons.arrow_back),
                onPressed:() => Navigator.pop(context, false),
              ),

            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                alignment: Alignment.centerLeft,
                icon: const Icon(Icons.account_circle),
                tooltip: 'Profile',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(_user)));
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
                                  _user,"assets/images/laptop.jpg", "Mobile", list),
                              ProductScreen(
                                  _user, "assets/images/laptop.jpg", "Laptop", list),
                              ProductScreen(
                                  _user,"assets/images/laptop.jpg", "Camera", list),
                            ],
                          ),
                          scrollDirection: Axis.horizontal,
                        ),
                        Text("Clothing Products", style: TextStyle(fontSize: 30)),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              ProductScreen(
                                  _user,"assets/images/laptop.jpg", "Female", list),
                              ProductScreen(
                                  _user,"assets/images/laptop.jpg", "Male", list),
                              ProductScreen(
                                  _user,"assets/images/laptop.jpg", "Children", list),
                            ],
                          ),
                          scrollDirection: Axis.horizontal,
                        ),
                        Text("Digital Products", style: TextStyle(fontSize: 30)),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              ProductScreen(
                                  _user, "assets/images/laptop.jpg", "Book", list),
                              ProductScreen(
                                  _user,"assets/images/laptop.jpg", "Stationery", list),
                              ProductScreen(
                                  _user, "assets/images/laptop.jpg", "Music", list),
                              ProductScreen(
                                  _user,"assets/images/laptop.jpg", "Handicrafts", list),
                            ],
                          ),
                          scrollDirection: Axis.horizontal
                        ),
                        Text("Digital Products", style: TextStyle(fontSize: 30)),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              ProductScreen(
                                  _user,"assets/images/laptop.jpg", "SportingGoods", list),
                              ProductScreen(
                                  _user, "assets/images/laptop.jpg", "Sportswear", list),
                              ProductScreen(
                                  _user, "assets/images/laptop.jpg", "TravelAccessories", list),

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
