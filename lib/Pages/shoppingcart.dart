import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../ClassOfProducts/Catergory.dart';
import '../ClassOfProducts/User.dart';
import '../ClassOfProducts/product.dart';

class listofuserproduct extends StatelessWidget {
  listofuserproduct(this._user,{Key key}) : super(key: key);
  User _user;
  List<Product> _list = [];

  @override
  Widget build(BuildContext context) {
    _list = _user.orderedProducts;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF1d0c53),
          appBar: AppBar(
            centerTitle: true,
            title: Text("SIGN IN",
                style:
                TextStyle(wordSpacing: 2, fontSize: 20)),
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),
            ),

            actions: <Widget>[
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.star)),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
          ),
          body: Container(
            child: ListView.builder(
                itemCount: _list.length,
                itemBuilder:
                    (BuildContext context, int index) {
                  return showproduct(_list[index]);
                }),
          ),
        ),
      ),
    );
  }
}

class showproduct extends StatelessWidget {
  showproduct(this._product, {Key key}) : super(key: key);
  Product _product;
  @override
  Widget build(BuildContext context) {
    int len = max<int>(_product.price.length+8,_product.title.length);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xFF653094),
      ),
      width: 800,
      height: 150,
      margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      child: Row(
        children: [
          SizedBox(
            height: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(_product.title,
                  style: TextStyle(

                    fontFamily: "fonts/Schyler-Italic.ttf",
                    fontSize: 20,
                    color: Color(0xFF8fdbe3),
                  )),
              SizedBox(height: 55,),

              Text("Price : "+_product.price,
                  style: TextStyle(

                    fontFamily: "fonts/Schyler-Italic.ttf",
                    fontSize: 20,
                    color: Color(0xFF8fdbe3),
                  )),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("Rate :",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFbe0cc4),
                      )),
                  SizedBox(width: 10),
                  Text(_product.rate.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFcfa904),
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 270-len.floorToDouble()*12,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Image.asset(_product.imagePath, fit: BoxFit.fill),
            width: 140,
            height: 140,
          ),
        ],
      ),
    );
  }
}
