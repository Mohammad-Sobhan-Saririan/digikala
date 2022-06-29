import 'package:digikala/Pages/pageofalldetails.dart';
import 'package:digikala/Pages/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../ClassOfProducts/Catergory.dart';
import '../ClassOfProducts/User.dart';
import '../ClassOfProducts/product.dart';
import 'listanyproduct.dart';

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
          body: Container(
            child: ListView.builder(
                itemCount: _list.length,
                itemBuilder:
                    (BuildContext context, int index) {
                  return showproduct(_user,_list[index]);
                }),
          ),
        ),
      ),
    );
  }
}
