import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuan1.dart';
import 'package:tugasakhirsalur/bantuan2.dart';
import 'package:tugasakhirsalur/bantuan3.dart';
import 'package:tugasakhirsalur/bantuan4.dart';

class BantuanMain extends StatelessWidget {
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
                      icon: Icon(Icons.close),
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
                      'Bantuan',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30),
                    )),

                Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: ElevatedButton(
                    child: Text('1'),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Bantuan1())
                      );
                    },
                  )
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: ElevatedButton(
                      child: Text('2'),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bantuan2())
                        );
                      },
                    )
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: ElevatedButton(
                      child: Text('3'),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bantuan3())
                        );
                      },
                    )
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: ElevatedButton(
                      child: Text('4'),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bantuan4())
                        );
                      },
                    )
                ),

              ],
            )
        )
    );
  }
}