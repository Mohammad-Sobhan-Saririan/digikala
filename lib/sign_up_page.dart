import 'package:digikala/products_categorization.dart';
import 'package:digikala/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade800,
      appBar: AppBar(
        centerTitle: true,
        title: Text("SIGN UP", style: TextStyle(wordSpacing: 2, fontSize: 20)),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 60,right: 60,top: 100  ),
              child :Column(
                children: [
                  Container(
                    color: Colors.greenAccent,
                    alignment: Alignment.center,
                    constraints: BoxConstraints.tightFor(width: 200,height: 20),
                    width: 120,
                    height: 40,
                    child: Text("Please Enter FirstName"),
                  ),
                  TextField(),
                  SizedBox(height: 20,),
                  Container(
                    color: Colors.greenAccent,
                    alignment: Alignment.center,
                    constraints: BoxConstraints.tightFor(width: 200,height: 20),
                    width: 120,
                    height: 40,
                    child: Text("Please Enter SureName"),
                  ),
                  TextField(),
                  SizedBox(height: 20,),
                  Container(
                    color: Colors.greenAccent,
                    alignment: Alignment.center,
                    constraints: BoxConstraints.tightFor(width: 200,height: 20),
                    width: 120,
                    height: 40,
                    child: Text("Please Enter PhoneNumber"),
                  ),
                  TextField(),
                  SizedBox(height: 20,),
                  Container(
                    color: Colors.greenAccent,
                    alignment: Alignment.center,
                    constraints: BoxConstraints.tightFor(width: 200,height: 20),
                    width: 120,
                    height: 40,
                    child: Text("Please Enter Password"),
                  ),
                  TextField(),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context){
                        return Category();
                      },
                    ),
                  );
                },
                child: Text(
                  "Cotinue",
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