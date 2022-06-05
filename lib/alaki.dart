import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class train extends StatefulWidget {
  const train({Key key}) : super(key: key);

  @override
  State<train> createState() => _trainState();
}

class _trainState extends State<train> {
  bool isvisible=false;
  String a ="123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                Container(
                    child: Text(isvisible?"$a":"salam")
                ),
              TextButton(
                onPressed: (){
                setState(() {
                  a+="4";
                }
                );
                this.isvisible=!isvisible;
              },
                child: Text("press"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
