import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuan/bantuan1.dart';
import 'package:tugasakhirsalur/bantuan/bantuan2.dart';
import 'package:tugasakhirsalur/bantuan/bantuan3.dart';

class BantuanMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.close_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Bantuan',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 50,),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Pendanaan',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bantuan1())
                        );
                      },
                    )
                ),

                SizedBox(height: 20,),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Donasi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bantuan2())
                        );
                      },
                    )
                ),

                SizedBox(height: 15,),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Kirim Uang',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bantuan3())
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