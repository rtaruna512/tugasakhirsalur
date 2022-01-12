import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BerandaRiwayat extends StatefulWidget {

  @override
  _BerandaRiwayatState createState() => _BerandaRiwayatState();
}

class _BerandaRiwayatState extends State<BerandaRiwayat> {
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Penyalur'),
        centerTitle: true,
        backgroundColor: salur1,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextField(
                onChanged: (value){

                },
                style: TextStyle(
                  color:Colors.lightGreen[800],
                ),
                decoration: InputDecoration(
                    hintText: 'Cari catatan',
                    hintStyle: TextStyle(
                      color:Colors.lightGreen[800],
                      fontStyle: FontStyle.italic,
                    ),
                    filled: true,
                    fillColor: Colors.lightGreen[300],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: (Colors.lightGreen[300])!,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: (Colors.lightGreen[300])!,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    suffixIcon: Icon(Icons.search, color:Colors.lightGreen[800])
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
