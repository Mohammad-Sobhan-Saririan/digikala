import 'package:digikala/Pages/pageofalldetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../ClassOfProducts/User.dart';
import '../ClassOfProducts/product.dart';

class listofproducts extends StatelessWidget {
  listofproducts(this.user,this._title,this._list,{Key key}) : super(key: key);
  var _path;
  var _title;
  User user;
  List<Product> _list = [];
  List<Product> _prolist = [];

  @override
  Widget build(BuildContext context) {
    _prolist = [];
    for (int i = 0; i < _list.length; i++) {
      if (_list[i].type.name == _title) _prolist.add(_list[i]);
    }

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
                itemCount: _prolist.length,
                itemBuilder:
                    (BuildContext context, int index) {
                  return showproduct(this.user,_prolist[index]);
                }),
          ),
        ),
      ),
    );
  }
}

class showproduct extends StatelessWidget {
  showproduct(this._user,this._product, {Key key}) : super(key: key);
  Product _product;
  User _user;
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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AllDetails(_user, _product);
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              padding:  EdgeInsets.all(0),
            ),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              child: Image.asset(_product.imagePath, fit: BoxFit.fill),
              width: 140,
              height: 140,
            ),
          ),
        ],
      ),
    );
  }
}
