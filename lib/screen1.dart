import 'package:digikala/sign_in_page.dart';
import 'package:digikala/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'Signin_up_pages/sign_in_screen.dart';
import 'Signin_up_pages/sign_up_screen.dart';

// import 'assets/Digikalalogo.png';
class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = TextButton.styleFrom(
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(12)
        ),
      elevation: 0,
      backgroundColor: Colors.cyanAccent,
    );
    return Scaffold(
      backgroundColor: Color(0xFF5f0da3),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/15,
              ),
              Image.asset(
                "assets/images/Digikalalogo.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/6,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/20,
              ),
              Text("Welcome to",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 25),
                  textAlign: TextAlign.center),
              Text("Namakala",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(height: MediaQuery.of(context).size.height/10),
              Container(
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/2,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context){
                            return SignInScreen();
                          },
                      ),
                    );
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  style: buttonStyle,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/2,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context){
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  style: buttonStyle,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/5,),
              Text("Powered By AP 1401",
                style: TextStyle(

                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
