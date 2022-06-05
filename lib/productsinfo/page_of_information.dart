import 'package:digikala/ClassOfProducts/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoProduct extends StatefulWidget {
  const InfoProduct({Key key, this.product}) : super(key: key);

  final Product product;


  @override
  State<InfoProduct> createState() => _InfoProductState(product);
}

class _InfoProductState extends State<InfoProduct> {
  final Product product;
  _InfoProductState( this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
