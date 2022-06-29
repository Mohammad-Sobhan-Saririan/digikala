import 'package:digikala/ClassOfProducts/Catergory.dart';
import 'package:digikala/Pages/profilepage.dart';
import 'package:digikala/Signin_up_pages/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ClassOfProducts/User.dart';
import '../ClassOfProducts/product.dart';
import '../products_categorization.dart';
import 'dart:math';

class AddProduct extends StatefulWidget {
  const AddProduct({Key key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  RegExp regexForEmail = RegExp(r'^[a-zA-Z0-9]+@gmail.com$');
  RegExp regexForLowerCase = RegExp(r'[a-z]+');
  RegExp regexForUpperCase = RegExp(r'[A-Z]+');
  RegExp regexForNumber = RegExp(r'[0-9]+');
  RegExp regexForPhoneNumber = RegExp(r'^(\+98|0)?9\d{9}$');
  final _formKey = GlobalKey<FormState>();
  TextEditingController _Category = TextEditingController();
  TextEditingController _Type = TextEditingController();
  TextEditingController _Title = TextEditingController();
  TextEditingController _Price = TextEditingController();
  TextEditingController _Properties = TextEditingController();
  User user;
  double num = 150;
  String hintText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Add your Product",
                style: TextStyle(wordSpacing: 2, fontSize: 20)),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            ),
            actions: <Widget>[
              IconButton(
              alignment: Alignment.centerLeft,
              icon: const Icon(Icons.account_circle),
              tooltip: 'Profile',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile(user)));
              },
            )
            ],
          ),
          // backgroundColor: Color(0xFFFAFAFA),

          backgroundColor: Color(0xFF5f0da3),

          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Image.asset(
                      "assets/images/Digikalalogo.png",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 6,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(6.0),
                      margin: EdgeInsets.all(10.0),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            hintText = value == 'Digital'
                                ? 'Mobile,Camera,Laptop'
                                : value == 'Book_Stationery'
                                    ? 'Handicrafts,Music,Stationery,Book'
                                    : value == 'Clothe'
                                        ? 'Children,Male,Female'
                                        : value == 'Sport_Travel'
                                            ? 'TravelAccessories,Sportswear,SportingGoods'
                                            : '';
                          });
                        },
                        controller: _Category,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value != 'Digital' &&
                                  value != 'Book_Stationery' &&
                                  value != 'Clothe' &&
                                  value != 'Sport_Travel') {
                            return 'Invalid Category!!';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          labelText: 'Category',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
                          hintText:
                              'Digital , Clothe , Book_Stationery , Sport_Travel',
                          contentPadding: EdgeInsets.all(25.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(7.0),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: _Type,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              _Category == null) {
                            if ((_Category.text == 'Digital' &&
                                    value != 'Laptop' &&
                                    value != 'Mobile' &&
                                    value != 'Camera') ||
                                (_Category.text == 'Book_Stationery' &&
                                    value != 'Handicrafts' &&
                                    value != 'Music' &&
                                    value != 'Stationery' &&
                                    value != 'Book') ||
                                (_Category.text == 'Clothe' &&
                                    value != 'Male' &&
                                    value != 'Female' &&
                                    value != 'Children') ||
                                (_Category.text != 'Sport_Travel' &&
                                    value != 'TravelAccessories' &&
                                    value != 'Sportswear' &&
                                    value != 'SportingGoods')) {
                              return 'Invalid Type for this Category ...';
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          labelText: 'Type',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
                          hintText: hintText,
                          contentPadding: EdgeInsets.all(25.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(7.0),
                      alignment: Alignment.center,
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(22),
                        ],
                        controller: _Title,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Fill the blank...';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          labelText: 'Title',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
                          hintText: 'E.g : SAMSUNG A52s',
                          contentPadding: EdgeInsets.all(25.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(7.0),
                      alignment: Alignment.center,
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(14),
                        ],
                        controller: _Price,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              regexForNumber.hasMatch(value) == false) {
                            return 'Fill the blank...';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          labelText: 'Price',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
                          hintText: 'E.g : 1000000000',
                          contentPadding: EdgeInsets.all(25.0),
                        ),
                      ),
                    ),
                    Container(
                      height: num,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(7.0),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            num = 140 >
                                    (((_Properties.text.length / 37))
                                            .ceilToDouble() *
                                        30.0)
                                ? 150
                                : (((_Properties.text.length / 37))
                                        .ceilToDouble() *
                                    30.0);
                          });
                        },
                        expands: true,
                        maxLines: null,
                        minLines: null,
                        controller: _Properties,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Fill the blank...';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          labelText: 'Properties',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
                          hintText: 'Android 11 , Ram 16 GB , Screen 6.5 inch',
                          helperStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.green,
                            fontSize: 12.0,
                          ),
                          helperText:
                              "Notice : Divide each property with ' - ' to add more properties",
                          contentPadding: EdgeInsets.all(25.0),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            categoryy am;
                            Typee an;
                            if (_Category.text == 'Digital') {
                              am = categoryy.Digital;
                            } else if (_Category.text == 'Clothe') {
                              am = categoryy.Clothe;
                            } else if (_Category.text == 'Book_Stationary') {
                              am = categoryy.Book_Stationery;
                            } else if (_Category.text == 'Sport_Travel') {
                              am = categoryy.Sport_Travel;
                            }
                            if (_Type.text == 'Mobile') {
                              an = Typee.Mobile;
                            } else if (_Type.text == 'Laptop') {
                              an = Typee.Laptop;
                            } else if (_Type.text == 'Camera') {
                              an = Typee.Camera;
                            } else if (_Type.text == 'TravelAccessories') {
                              an = Typee.TravelAccessories;
                            } else if (_Type.text == 'Sportswear') {
                              an = Typee.Sportswear;
                            } else if (_Type.text == 'SportingGoods') {
                              an = Typee.SportingGoods;
                            } else if (_Type.text == 'Handicrafts') {
                              an = Typee.Handicrafts;
                            } else if (_Type.text == 'Music') {
                              an = Typee.Music;
                            } else if (_Type.text == 'Stationery') {
                              an = Typee.Stationery;
                            } else if (_Type.text == 'Book') {
                              an = Typee.Book;
                            } else if (_Type.text == 'Male') {
                              an = Typee.Male;
                            } else if (_Type.text == 'Female') {
                              an = Typee.Female;
                            } else if (_Type.text == 'Children') {
                              an = Typee.Children;
                            }

                            Product product = Product(
                              am,
                              an,
                              _Title.text,
                              user,
                              "",
                              _Price.text,
                              [],
                            );
                            user.toSellProducts.add(product);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('User SignUp Successfully'),
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Category(user);
                                },
                              ),
                            );
                          }
                        },
                        child: Text('Add this Product'),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0XFF7a4882),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
