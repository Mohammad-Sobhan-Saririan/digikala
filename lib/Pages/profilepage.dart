import 'package:digikala/Signin_up_pages/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ClassOfProducts/User.dart';
import '../products_categorization.dart';

class Profile extends StatefulWidget {
  Profile(this.user,{Key key}) : super(key: key);
  User user;
  @override
  State<Profile> createState() => _ProfileState(this.user);
}

class _ProfileState extends State<Profile> {
  RegExp regexForEmail = RegExp(r'^[a-zA-Z0-9]+@gmail.com$');
  RegExp regexForLowerCase = RegExp(r'[a-z]+');
  RegExp regexForUpperCase = RegExp(r'[A-Z]+');
  RegExp regexForNumber = RegExp(r'[0-9]+');
  RegExp regexForPhoneNumber = RegExp(r'^(\+98|0)?9\d{9}$');
  bool d=true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _surename = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _email = TextEditingController();
  User user;

  _ProfileState(this.user);

  @override
  Widget build(BuildContext context) {
    if(d){
      _name.text = user.name;
      _surename.text = user.lastName;
      _number.text = user.phoneNumber;
      _email.text = user.email;
      d=false;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF1d0c53),
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/human.jpg",
                        fit: BoxFit.fitHeight,
                      ),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      padding: EdgeInsets.only(left: 30, right: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.7,
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
                        controller: _name,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 3) {
                            return 'Invalid Name\nName mute be at least 3 characters';
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
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
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
                        controller: _surename,
                        validator: (value) {
                          if (value == null || value.isEmpty||value.length<3) {
                            return 'Invalid SurName\nSurName mute be at least 3 characters';
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
                          labelText: 'Surename',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
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

                        controller: _number,
                        validator: (value) {
                          if (value == null || value.isEmpty ||
                              !regexForPhoneNumber.hasMatch(value)||value.length<11) {
                            return 'Please enter valid text';
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
                          labelText: 'Number',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
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
                        controller: _email,
                        validator: (value) {
                          if(value!=null||!value.isEmpty){
                            if (!regexForEmail.hasMatch(value)) {
                              return 'Please enter valid Email...';
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
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.black54,
                            fontSize: 17.0,
                          ),
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
                            user.email = _email.text;
                            user.name = _name.text;
                            user.lastName = _surename.text;
                            user.phoneNumber = _number.text;
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Saved...'),
                              ),
                            );
                          }
                        },
                        child: Text('Save'),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFd098d9),
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
