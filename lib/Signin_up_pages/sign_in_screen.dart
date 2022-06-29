import 'package:digikala/Signin_up_pages/sign_up_screen.dart';
import 'package:digikala/products_categorization.dart';
import 'package:flutter/material.dart';

import '../ClassOfProducts/User.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  RegExp regexForEmail = RegExp(r'^[a-zA-Z0-9]+@gmail.com$');
  RegExp regexForLowerCase = RegExp(r'[a-z]+');
  RegExp regexForUpperCase = RegExp(r'[A-Z]+');
  RegExp regexForNumber = RegExp(r'[0-9]+');
  RegExp regexForPhoneNumber = RegExp(r'^(\+98|0)?9\d{9}$');
  String pass = "1234";
  Color x = Colors.red;
  List<User> users = [User("ali", "alavi", "09100375851", "123456aA"),];
  final _formKey = GlobalKey<FormState>();
  bool _isVisiblePassword = false;
  TextEditingController _password = TextEditingController();
  TextEditingController _number = TextEditingController();
  User _user;
  String number ;
  bool _presentnumber = false;
  bool _presentpassword = false;

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
                        controller: _number,
                        validator: (value) {
                          if (value == null || value.isEmpty||
                              !regexForPhoneNumber.hasMatch(value)||value.length<11) {
                            return 'Please enter valid text';
                          }
                          for (var i = 0; i < users.length; i++) {
                            if (value == users[i].phoneNumber) {
                              number = value;
                              _presentnumber = true;
                            }
                          }
                          if(!_presentnumber){
                            return "There is no user with this phone number";
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
                          if(number==null){
                            return null;
                          }
                          if (value == null || value.isEmpty ||
                              !regexForLowerCase.hasMatch(value)||
                              !regexForUpperCase.hasMatch(value)||
                              !regexForNumber.hasMatch(value)||
                              value.length<8) {
                            return 'Password must contain at least one lowercase, one uppercase,\n one number and at least 8 characters';
                          }
                          for (var i = 0; i < users.length; i++) {
                            if (number == users[i].phoneNumber) {
                              if (value == users[i].password) {
                                _user= users[i];
                                _presentpassword = true;
                                break;
                              }
                            }
                          }
                          if(!_presentpassword){
                            return "Wrong password";
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
                              onPressed: () {
                                setState(() {
                                  Text(_password.text);
                                });
                              },
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
                      width: double.infinity,
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('User Login Successfully'),
                              ),
                            );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Category(_user);
                              },
                            ),
                          );
                          }
                        },
                        child: Text('Sign In'),
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
                        Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignUpScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        Text(_number.text),
                        // submitButton(context),
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

  Widget submitButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Data added'),
            ),
          );
          Navigator.of(context).pop(

          );
        }
      },
    );
  }
}

//
// import 'package:digikala/screen1.dart';
// import 'package:flutter/material.dart';
//
// import '../ClassOfProducts/User.dart';
//
// class LoginSignupScreen extends StatefulWidget {
//   @override
//   LoginSignupScreenState createState() => LoginSignupScreenState();
// }
//
// class LoginSignupScreenState extends State<LoginSignupScreen> {
//   bool isSignupScreen = true;
//   bool isMale = true;
//   bool isRememberMe = false;
//   final regexForEmail = RegExp(r'^[a-zA-Z0-9]+@gmail.com$');
//   User user;
//   TextEditingController userNameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Palette.backgroundColor,
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/signInBackground2.jpg"),
//                   fit: BoxFit.cover,
//                 )
//             ),
//           ),
//           Positioned(
//             top: 0,
//             right: 0,
//             left: 0,
//             child: Container(
//               // decoration: BoxDecoration(
//               //     image: DecorationImage(
//               //         image: AssetImage("assets/images/signInBackground2.jpg"),
//               //         fit: BoxFit.cover,
//               //       )
//               // ),
//               child: Container(
//                 padding: EdgeInsets.only(top: 30, left: 30),
//                 // color: Color(0xFF3b5999).withOpacity(.85),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     RichText(
//                       text: TextSpan(
//                           text: "Welcome to",
//                           style: TextStyle(
//                             fontSize: 25,
//                             letterSpacing: 2,
//                             color: Colors.yellow[700],
//                           ),
//                           children: [
//                             TextSpan(
//                               text: isSignupScreen ? " Rizona," : " Back,",
//                               style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.yellow[700],
//                               ),
//                             )
//                           ]),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       isSignupScreen
//                           ? "Signup to Continue"
//                           : "Signin to Continue",
//                       style: TextStyle(
//                         letterSpacing: 1,
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           // Trick to add the shadow for the submit button
//           buildBottomHalfContainer(true),
//           //Main Contianer for Login and Signup
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 400),
//             curve: Curves.bounceInOut,
//             top: isSignupScreen ? 90 : 120,
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 400),
//               curve: Curves.bounceInOut,
//               height: isSignupScreen ? 380 : 260,
//               padding: EdgeInsets.all(20),
//               width: MediaQuery.of(context).size.width - 40,
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.black.withOpacity(0.3),
//                         blurRadius: 15,
//                         spreadRadius: 5),
//                   ]),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               isSignupScreen = false;
//                             });
//                           },
//                           child: Column(
//                             children: [
//                               Text(
//                                 "LOGIN",
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: !isSignupScreen
//                                         ? Palette.activeColor
//                                         : Palette.textColor1),
//                               ),
//                               if (!isSignupScreen)
//                                 Container(
//                                   margin: EdgeInsets.only(top: 3),
//                                   height: 2,
//                                   width: 55,
//                                   color: Colors.orange,
//                                 )
//                             ],
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               isSignupScreen = true;
//                             });
//                           },
//                           child: Column(
//                             children: [
//                               Text(
//                                 "SIGNUP",
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: isSignupScreen
//                                         ? Palette.activeColor
//                                         : Palette.textColor1),
//                               ),
//                               if (isSignupScreen)
//                                 Container(
//                                   margin: EdgeInsets.only(top: 3),
//                                   height: 2,
//                                   width: 55,
//                                   color: Colors.orange,
//                                 )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                     if (isSignupScreen) buildSignupSection(),
//                     if (!isSignupScreen) buildSigninSection()
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           // Trick to add the submit button
//           buildBottomHalfContainer(false),
//           // Bottom buttons
//           Positioned(
//             top: MediaQuery.of(context).size.height - 100,
//             right: 0,
//             left: 0,
//             child: Column(
//               children: [
//                 Text(isSignupScreen ? "" : "Or Signin with"),
//                 Container(
//                   margin: EdgeInsets.only(right: 20, left: 20, top: 15),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       buildTextButton(Icons.add_moderator,
//                           "Facebook", Palette.facebookColor),
//                       buildTextButton(Icons.adb_sharp,
//                           "Google", Palette.googleColor),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Container buildSigninSection() {
//     return Container(
//       margin: EdgeInsets.only(top: 20),
//       child: Column(
//         children: [
//           buildTextField(Icons.mail_outline, "info@demouri.com", false, true),
//           buildTextField(
//               Icons.adb_sharp, "**********", true, false),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Checkbox(
//                     value: isRememberMe,
//                     activeColor: Palette.textColor2,
//                     onChanged: (value) {
//                       setState(() {
//                         isRememberMe = !isRememberMe;
//                       });
//                     },
//                   ),
//                   Text("Remember me",
//                       style: TextStyle(fontSize: 12, color: Palette.textColor1))
//                 ],
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: Text("Forgot Password?",
//                     style: TextStyle(fontSize: 12, color: Palette.textColor1)),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   Container buildSignupSection() {
//     return Container(
//       margin: EdgeInsets.only(top: 20),
//       child: Column(
//         children: [
//           Container(
//             child: ListTile(
//               leading: Icon(
//                 Icons.adb_sharp,
//               ),
//               minLeadingWidth: 0,
//               title: TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "User Name",
//                   hintStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Colors.black,
//                 ),
//                 controller: userNameController,
//                 keyboardType: TextInputType.text,
//                 maxLines: 1,
//               ),
//               trailing: Icon(
//                 Icons.check,
//                 color: Colors.green,
//               ),
//             ),
//           ),
//           Container(
//             child: ListTile(
//               leading: Icon(
//                 Icons.adb_sharp,
//               ),
//               minLeadingWidth: 0,
//               title: TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Email",
//                   hintStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Colors.black,
//                 ),
//                 controller: emailController,
//                 keyboardType: TextInputType.text,
//                 maxLines: 1,
//               ),
//               trailing: Icon(
//                 Icons.check,
//                 color: Colors.green,
//               ),
//             ),
//           ),
//           Container(
//             child: ListTile(
//               leading: Icon(
//                 Icons.adb_sharp,
//               ),
//               minLeadingWidth: 0,
//               title: TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   hintStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Colors.black,
//                 ),
//                 controller: passwordController,
//                 keyboardType: TextInputType.text,
//                 maxLines: 1,
//               ),
//               trailing: Icon(
//                 Icons.check,
//                 color: Colors.green,
//               ),
//             ),
//           ),
//           // child: TextFormField(
//           //   decoration: InputDecoration(
//           //     hintText: "User Name",
//           //     hintStyle: TextStyle(
//           //       color: Colors.grey,
//           //       fontSize: 15,
//           //       fontWeight: FontWeight.w600,
//           //
//           //     ),
//           //     contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
//           //     border: OutlineInputBorder(
//           //       borderRadius: BorderRadius.circular(30),
//           //     ),
//           //
//           //   ),
//           //   style: TextStyle(
//           //     fontSize: 15,
//           //     color: Colors.black,
//           //   ),
//           //   controller: userNameController,
//           //   keyboardType: TextInputType.text,
//           //   maxLines: 1,
//           //
//           // ),
//
//           // buildTextField(MaterialCommunityIcons.account_outline, "User Name",
//           //     false, false),
//           // buildTextField(
//           //     MaterialCommunityIcons.email_outline, "email", false, true
//           // ),
//           // buildTextField(
//           //     MaterialCommunityIcons.lock_outline, "password", true, false),
//           Padding(
//             padding: const EdgeInsets.only(top: 10, left: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isMale = true;
//                     });
//                   },
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 30,
//                         height: 30,
//                         margin: EdgeInsets.only(right: 8),
//                         decoration: BoxDecoration(
//                             color: isMale
//                                 ? Palette.textColor2
//                                 : Colors.transparent,
//                             border: Border.all(
//                                 width: 1,
//                                 color: isMale
//                                     ? Colors.transparent
//                                     : Palette.textColor1),
//                             borderRadius: BorderRadius.circular(15)),
//                         child: Icon(
//                           Icons.adb_sharp,
//                           color: isMale ? Colors.white : Palette.iconColor,
//                         ),
//                       ),
//                       Text(
//                         "Male",
//                         style: TextStyle(color: Palette.textColor1),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 30,
//                 ),
//                 // Container(
//                 //   // width: 200,
//                 //   margin: EdgeInsets.only(top: 20),
//                 //   child: RichText(
//                 //     textAlign: TextAlign.center,
//                 //     text: TextSpan(
//                 //         text: "By pressing 'Submit' you agree \nto our ",
//                 //         style: TextStyle(color: Palette.textColor2),
//                 //         children: [
//                 //           TextSpan(
//                 //             text: "term & conditions",
//                 //             style: TextStyle(color: Colors.orange),
//                 //           ),
//                 //         ]
//                 //     ),
//                 //   ),
//                 // ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isMale = false;
//                     });
//                   },
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 30,
//                         height: 30,
//                         margin: EdgeInsets.only(right: 8),
//                         decoration: BoxDecoration(
//                             color: isMale
//                                 ? Colors.transparent
//                                 : Palette.textColor2,
//                             border: Border.all(
//                                 width: 1,
//                                 color: isMale
//                                     ? Palette.textColor1
//                                     : Colors.transparent),
//                             borderRadius: BorderRadius.circular(15)),
//                         child: Icon(
//                           Icons.adb_sharp,
//                           color: isMale ? Palette.iconColor : Colors.white,
//                         ),
//                       ),
//                       Text(
//                         "Female",
//                         style: TextStyle(color: Palette.textColor1),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             // width: 200,
//             margin: EdgeInsets.only(top: 20),
//             child: RichText(
//               textAlign: TextAlign.center,
//               text: TextSpan(
//                   text: "By pressing 'Submit' you agree \nto our ",
//                   style: TextStyle(color: Palette.textColor2),
//                   children: [
//                     TextSpan(
//                       //recognizer: ,
//                       text: "term & conditions",
//                       style: TextStyle(color: Colors.orange),
//                     ),
//                   ]),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   TextButton buildTextButton(
//       IconData icon, String title, Color backgroundColor) {
//     return TextButton(
//       onPressed: () {},
//       style: TextButton.styleFrom(
//           side: BorderSide(width: 1, color: Colors.grey),
//           minimumSize: Size(145, 40),
//           shape:
//           RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           primary: Colors.white,
//           backgroundColor: backgroundColor),
//       child: Row(
//         children: [
//           Icon(
//             icon,
//           ),
//           SizedBox(
//             width: 5,
//           ),
//           Text(
//             title,
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget buildBottomHalfContainer(bool showShadow) {
//     return AnimatedPositioned(
//       duration: Duration(milliseconds: 400),
//       curve: Curves.bounceInOut,
//       top: isSignupScreen ? 420 : 330,
//       right: 0,
//       left: 0,
//       child: Center(
//         child: GestureDetector(
//           onTap: () {
//             String userName = userNameController.text;
//             String email = emailController.text;
//             String password = passwordController.text;
//             RegExp regexForEmail = RegExp(r'^[a-zA-Z0-9]+@gmail.com$');
//             RegExp regexForLowerCase = RegExp(r'[a-z]+');
//             RegExp regexForUpperCase = RegExp(r'[A-Z]+');
//             RegExp regexForNumber = RegExp(r'[0-9]+');
//             bool validPassword = password.length >= 8 &&
//                 regexForLowerCase.hasMatch(password) &&
//                 regexForUpperCase.hasMatch(password) &&
//                 regexForNumber.hasMatch(password);
//             // bool validEmail = regexForEmail.hasMatch(email);
//             // // !!!!!!!!!!!!! MUST MOVE THIS PART TO ELSE BEFORE MERGE !!!!!!!!!!!!!
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Screen1()),
//             );
//             // welcomePage replaced with HomePage
//             // // !!!!!!!!!!!!! MUST MOVE THIS PART TO ELSE BEFORE MERGE !!!!!!!!!!!!!
//             if (userName.isEmpty || email.isEmpty || password.isEmpty) {
//               showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text("Error"),
//                       content: Text("Please fill all the fields"),
//                       actions: [
//                         FlatButton(
//                           child: Text("Ok"),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                         )
//                       ],
//                     );
//                   });
//             } else if (!validPassword) {
//               showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text("Error"),
//                       content: Text(
//                           "Password must contain atleast one lowercase, one uppercase, one number and atleast 8 characters"),
//                       actions: [
//                         FlatButton(
//                           child: Text("Ok"),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                         )
//                       ],
//                     );
//                   });
//             } else if (!regexForEmail.hasMatch(email)) {
//               showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text("Error"),
//                       content: Text("Please enter a valid email"),
//                       actions: [
//                         FlatButton(
//                           child: Text("Ok"),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                         )
//                       ],
//                     );
//                   });
//             } else {
//               user = User(userName, userName, password, password,password);
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Screen1(
//                     )),
//               );
//             }
//           },
//           child: Container(
//             height: 90,
//             width: 90,
//             padding: EdgeInsets.all(15),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(50),
//                 boxShadow: [
//                   if (showShadow)
//                     BoxShadow(
//                       color: Colors.black.withOpacity(.3),
//                       spreadRadius: 1.5,
//                       blurRadius: 10,
//                     )
//                 ]),
//             child: !showShadow
//                 ? Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     // colors: [Colors.orange[200], Colors.red[400]],
//                       colors: [Colors.orange, Colors.red],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight),
//                   borderRadius: BorderRadius.circular(30),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.black.withOpacity(.3),
//                         spreadRadius: 1,
//                         blurRadius: 2,
//                         offset: Offset(0, 1))
//                   ]),
//               child: Icon(
//                 Icons.arrow_forward,
//                 color: Colors.white,
//               ),
//             )
//                 : Center(),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildTextField(
//       IconData icon, String hintText, bool isPassword, bool isEmail) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: TextField(
//         obscureText: isPassword,
//         keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             icon,
//             color: Palette.iconColor,
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Palette.textColor1),
//             borderRadius: BorderRadius.all(Radius.circular(35.0)),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Palette.textColor1),
//             borderRadius: BorderRadius.all(Radius.circular(35.0)),
//           ),
//           contentPadding: EdgeInsets.all(10),
//           hintText: hintText,
//           hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
//         ),
//       ),
//     );
//   }
// }
//
// // void showButtomToast() => Fluttertoast.showToast(
// //     msg: "This is Center Short Toast",
// //     toastLength: Toast.LENGTH_SHORT,
// //     gravity: ToastGravity.CENTER,
// //     timeInSecForIosWeb: 2,
// //     backgroundColor: Colors.red,
// //     textColor: Colors.white,
// //     fontSize: 16.0);
//
// // void showButtomToast() {
// //   Fluttertoast.showToast(
// //       msg: "Please fill all the fields correctly!",
// //
// //       // toastLength: Toast.LENGTH_SHORT,
// //       // gravity: ToastGravity.BOTTOM,
// //       // timeInSecForIosWeb: 5,
// //       // backgroundColor: Colors.red,
// //       // textColor: Colors.black,
// //       // fontSize: 16.0
// //   );
// // }
// class Palette {
//   static const Color iconColor = Color(0xFFB6C7D1);
//   static const Color activeColor = Color(0xFF09126C);
//   static const Color textColor1 = Color(0XFFA7BCC7);
//   static const Color textColor2 = Color(0XFF9BB3C0);
//   static const Color facebookColor = Color(0xFF3B5999);
//   static const Color googleColor = Color(0xFFDE4B39);
//   static const Color backgroundColor = Color(0xFFECF3F9);
// }
