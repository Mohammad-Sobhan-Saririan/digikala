import 'package:digikala/Pages/listanyproduct.dart';
import 'package:digikala/eachproductlist.dart';
import 'package:digikala/product_details.dart';
import 'package:digikala/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digikala/digitalproducts.dart';
import 'package:flutter/services.dart';

import 'ClassOfProducts/User.dart';
import 'ClassOfProducts/product.dart';

class ProductScreen extends StatefulWidget {
  var _path;
  var _title;
  var _list = [];
  User _user;

  ProductScreen(this._user,this._path, this._title, this._list, {Key key});

  @override
  State<ProductScreen> createState() =>
      _ProductScreenState(_user,_path, _title, _list);
}

class _ProductScreenState extends State<ProductScreen> {
  var _path;
  var _title;
  List<Product> _list = [];
  User _user;


  _ProductScreenState(
      this._user,
    this._path,
    this._title,
    this._list,
  );

  @override
  Widget build(BuildContext context) {
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
                      return listofproducts(_user,_title, _list);
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

