import 'package:digikala/eachproductlist.dart';
import 'package:digikala/product_details.dart';
import 'package:digikala/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digikala/digitalproducts.dart';

class ProductScreen extends StatefulWidget {
  var _path;
  var _title;
  var _destination;
  ProductScreen(this._path, this._title,this._destination, {Key key});


  @override
  State<ProductScreen> createState() => _ProductScreenState(_path, _title,_destination);
}

class _ProductScreenState extends State<ProductScreen> {
  var _path;
  var _title;
  var _destination;

  _ProductScreenState(this._path, this._title, this._destination, );

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      if(_destination=='ProductDetails') {
                        return ListProduct();
                      }
                      return Screen1();
                    },
                  ),
                );
              }
              , child: Image.asset(_path,width: 250,height: 95,),
            ),

            SizedBox(height: 5,),
            Text(_title, style: TextStyle(fontSize: 20, color: Colors.teal,),),
          ],
        ),
      ),
      margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 0),
      width: 150,
      height: 150,
      //color: Colors.white70,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFFf7f7f7),
          border: Border.all(
            width: 3,
            color: Colors.white,
          )
      ),
    );
  }
}
