import 'package:digikala/ClassOfProducts/product.dart';
import 'package:digikala/Pages/profilepage.dart';
import 'package:digikala/Pages/shoppingcart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ClassOfProducts/Catergory.dart';
import '../ClassOfProducts/User.dart';

class AllDetails extends StatefulWidget {
  AllDetails(this.user,this.product,{Key key}) : super(key: key);
  Product product;
  User user ;

  @override
  State<AllDetails> createState() => _AllDetailsState(this.user,this.product);
}

class _AllDetailsState extends State<AllDetails> {
  User user;
  Color a = Colors.red;
  bool d = false;
  IconData checkedicon = Icons.add_box;
  Product product;
  _AllDetailsState(this.user,this.product);
  String addproduct;
  String Details="";

  @override
  Widget build(BuildContext context) {


    Details="";
    for(int i=0;i<product.showProperty.length;i++){
      Details+=product.showProperty[i]+"\n";
    }
      for (int i = 0; i < user.orderedProducts.length; i++) {
        if (user.orderedProducts[i] == product) {
          d = true;
        }
      }

    addproduct= d ? "Product added to list" : "Add Product to your list";
      checkedicon = d ? Icons.check_box : Icons.add_box;
    a= d ? Colors.teal : Colors.red;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("SIGN IN",
                style:
                TextStyle(wordSpacing: 2, fontSize: 20)),
            leading: IconButton(icon: Icon(Icons.arrow_back),
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
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return listofuserproduct(user);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          body: Container(
              color: Color(0xFF1d0c53),
              child: Column(
                  children: [
                      Container(
                        child: Image.asset(product.imagePath,fit: BoxFit.fitHeight,),
                        margin: EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 15),
                        padding: EdgeInsets.only(left: 30,right: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepPurple
                      ),

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.7,
                  ),
                    Container(
                      alignment: Alignment.center,
                        child: Text(product.title,style: TextStyle(
                          fontSize: 20,
                          color: Colors.tealAccent
                        )),
                        margin: EdgeInsets.only(bottom: 10,left: 20,right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.blueGrey
                      ),

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 12,
                  ),
                    Container(
                      padding: EdgeInsets.only(top:10,right: 5,left: 5,bottom: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(Details,
                          style: TextStyle(
                          fontSize: 15,
                          color: Colors.tealAccent
                      )),
                      margin: EdgeInsets.only(bottom: 10,left: 20,right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10
                      ),

                      width: MediaQuery.of(context).size.width,
                      height: product.showProperty.length  * 23.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        autofocus: true,
                        onPressed: () {
                          setState(() {

                        if(!d) {
                          user.orderedProducts.add(product);
                          a = Colors.teal;
                          checkedicon=Icons.check_box;
                          addproduct="Product added to list";
                        }else {
                          user.orderedProducts.remove(product);
                          a = Colors.red;
                          checkedicon=Icons.add_box;
                          addproduct="Add Product to your list";
                        }
                        d=!d;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Icon(
                                checkedicon
                            ),
                            SizedBox(width: 85),
                            Text(addproduct),
                          ],
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: a,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),

          ],
    ),
    ),
    ),
    ),
    );
  }
}
