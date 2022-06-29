import 'package:digikala/Signin_up_pages/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../ClassOfProducts/User.dart';
import '../products_categorization.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  RegExp regexForEmail = RegExp(r'^[a-zA-Z0-9]+@gmail.com$');
  RegExp regexForLowerCase = RegExp(r'[a-z]+');
  RegExp regexForUpperCase = RegExp(r'[A-Z]+');
  RegExp regexForNumber = RegExp(r'[0-9]+');
  RegExp regexForPhoneNumber = RegExp(r'^(\+98|0)?9\d{9}$');
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController  _surename = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  User user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFFAFAFA),
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Digikalalogo.png',
                      width: 220,
                      height: 220,
                    ),
                    Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _name,
                        validator: (value) {
                          if (value == null || value.isEmpty||value.length<5) {
                            return 'Invalid Name\nName mute be at least 5 characters';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          hintText: 'Name',
                          contentPadding: EdgeInsets.all(25.0),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _surename,
                        validator: (value) {
                          if (value == null || value.isEmpty||value.length<6) {
                            return 'Invalid SurName\nSurName mute be at least 6 characters';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          hintText: 'Surname',
                          contentPadding: EdgeInsets.all(25.0),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
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
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                            BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                            BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                            BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          hintText: 'PhoneNumber',
                          contentPadding: EdgeInsets.all(25.0),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _password,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !regexForLowerCase.hasMatch(value) ||
                              !regexForUpperCase.hasMatch(value) ||
                              !regexForNumber.hasMatch(value) ||
                              value.length < 8) {
                            return 'Password must contain at least one lowercase, one uppercase,\n one number and at least 8 characters';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          hintText: 'Password',
                          contentPadding: EdgeInsets.all(25.0),
                          suffixIcon: Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: FloatingActionButton(
                              backgroundColor: Colors.teal,
                              onPressed: () {},
                              child: Icon(
                                Icons.visibility_off,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _confirmPassword,
                        validator: (value) {
                          if (!(_password.text == value)) {
                            return 'Your Passwords does not match each other!';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF1F1FB), width: 2.0),
                          ),
                          hintText: 'Confirm Password',
                          contentPadding: EdgeInsets.all(25.0),
                          suffixIcon: Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: Icon(
                              Icons.visibility_off,
                              color: Colors.black87,
                            ),
                          ),
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
                            user = User(
                                _name.text,
                                _surename.text,
                                _number.text,
                                _password.text);
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
                        child: Text('Sign Up'),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF1257FA),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignInScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ],
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
