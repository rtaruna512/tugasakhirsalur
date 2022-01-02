import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bantuan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment:Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(15,15,15,15),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 35,
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    )
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(30,0,30,0),
                    alignment: Alignment.center,
                    child: Text(
                      'Bantuan 3',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30),
                    )),

              ],
            )
        )
    );
  }
}