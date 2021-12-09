import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/transfertujuan.dart';

class TransferBeranda extends StatelessWidget {
  Color salur1 = const Color(0xff014753);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: salur1,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      body:Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: salur1,
                border: Border.all(
                    color: salur1,
                ),
              ),
              padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: Text(
                'Wah anda telah\n'
                    'menghemat sebesar:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )
              ),

            ),

            Container(
              decoration: BoxDecoration(
                color: salur1,
                border: Border.all(
                    color: salur1
                ),
              ),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 15),
              child: Text(
                'Rp123.456',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(30, 250, 30, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(500, 45)
                ),
                child: Text(
                  'Kirim Uang Sekarang'
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferTujuan())
                  );
                },
              )
            )
          ],
        )
      )
    );
  }
}