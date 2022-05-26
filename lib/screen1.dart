import 'package:digikala/sign_in_page.dart';
import 'package:digikala/sign_up_page.dart';
import 'package:flutter/material.dart';

// import 'assets/Digikalalogo.png';
class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade800,
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "images/Digikalalogo.png",
              width: 300,
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Welcome to",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25),
                textAlign: TextAlign.center),
            Text("Namakala",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 35,
                ),
                textAlign: TextAlign.center),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context){
                          return SignIn();
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
                style: TextButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.cyanAccent,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context){
                        return SignUp();
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
                style: TextButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.cyanAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
