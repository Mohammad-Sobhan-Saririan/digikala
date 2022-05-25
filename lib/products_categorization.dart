import 'package:digikala/digitalproducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8c6aad),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text("SIGN UP", style: TextStyle(wordSpacing: 2, fontSize: 20)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 150,
                            margin: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 5),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              border: Border.all(
                                  width: 3, color: Colors.grey.shade500),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Image.asset(
                                    "images/base_scamper.jpg",
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 10,
                                      left: 20,
                                      bottom: 10,
                                      right: 100),
                                ),
                                Text(
                                  "Digital\nProducts",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Digital();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "\nGo\n",
                                    textAlign: TextAlign.center,
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                          color: Colors.teal,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
