import 'package:digikala/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digikala/digitalproducts.dart';

import 'eachproductlist.dart';

class ProductDetails extends StatefulWidget {
  var _path;
  var _title;
  var _destination;

  ProductDetails(this._path, this._title, this._destination, {Key key});

  @override
  State<ProductDetails> createState() =>
      _ProductDetailsState(_path, _title, _destination);
}

class _ProductDetailsState extends State<ProductDetails> {
  var _path;
  var _title;
  var _destination;

  _ProductDetailsState(
    this._path,
    this._title,
    this._destination,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
        child: Row(
          children: [
            SizedBox(height: 15,),
            Text(
              _title,
              style: TextStyle(
                fontSize: 15,
                color: Colors.teal,
              ),
              maxLines: 3,
            ),
            SizedBox(width: 200,),
            TextButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       // if(_destination=='ProductDetails') {
                //       //   return ProductDetails("images/laptop.jpg","Mobile","ProductDetails");
                //       // }
                //       return ListProduct();
                //     },
                //   ),
                // );
              },
              child: Image.asset(
                _path,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
      margin: EdgeInsets.only(left: 30, top: 5, bottom: 5, right: 30),
      width: 500,
      height: 150,
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
