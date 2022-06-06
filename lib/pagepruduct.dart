import 'package:digikala/eachproductlist.dart';
import 'package:digikala/product_details.dart';
import 'package:digikala/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digikala/digitalproducts.dart';
import 'package:flutter/services.dart';

import 'ClassOfProducts/product.dart';

class ProductScreen extends StatefulWidget {
  var _path;
  var _title;
  var _list = [];

  ProductScreen(this._path, this._title, this._list, {Key key});

  @override
  State<ProductScreen> createState() =>
      _ProductScreenState(_path, _title, _list);
}

class _ProductScreenState extends State<ProductScreen> {
  var _path;
  var _title;
  List<Product> _list = [];
  List<Product> _prolist = [];

  _ProductScreenState(
    this._path,
    this._title,
    this._list,
  );

  @override
  Widget build(BuildContext context) {
    _prolist = [];
    for (int i = 0; i < _list.length; i++) {
      if (_list[i].type.name == _title) _prolist.add(_list[i]);
    }
    ;
    return Container(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return MaterialApp(
                        debugShowCheckedModeBanner: false,
                        home: SafeArea(
                          child: Scaffold(
                            appBar: AppBar(
                              centerTitle: true,
                              title: Text("SIGN IN",
                                  style:
                                      TextStyle(wordSpacing: 2, fontSize: 20)),
                              actions: <Widget>[
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.star)),
                                Text(_prolist.length.toString()),
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
                              color: Colors.teal,
                              child: ListView.builder(
                                  itemCount: _prolist.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return showproduct(_prolist[index]);
                                  }),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              child: Image.asset(
                _path,
                width: 250,
                height: 95,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              _title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
      margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 0),
      width: 220,
      height: 170,
      //color: Colors.white70,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFFf7f7f7),
          border: Border.all(
            width: 3,
            color: Colors.white,
          )),
    );
  }
}

class showproduct extends StatelessWidget {
  showproduct(this._product, {Key key}) : super(key: key);
  Product _product;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent,
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
            children: [
              Text(_product.type.name,
                  style: TextStyle(

                    fontFamily: "fonts/Schyler-Italic.ttf",
                    fontSize: 30,
                    color: Colors.black,
                  )),
              SizedBox(height: 60,),
              Row(
                children: [
                  Text("5",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  SizedBox(width: 180),
                  Text(_product.rate().toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Image.asset(_product.imagePath, fit: BoxFit.fill),
            width: 140,
            height: 140,
          ),
        ],
      ),
    );
  }
}
