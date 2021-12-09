import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/widget/donasicarousel.dart';

class DonasiBeranda extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DonasiBeranda> {
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color salur3 = const Color(0xffd2ddaf);
  Color salur4 = const Color(0xff79834e);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: salur1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Donasi', textAlign: TextAlign.center,),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(

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
                    hintText: 'Cari tujuan donasi',
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

            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: 320,
                height: 200,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0, 0),
                        colors: <Color>[
                          gradientGLight,
                          gradientGdark
                        ]
                    )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Anda sudah berbagi:',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'Rp250.000',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Ayo Bantu Sekarang',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            donasiCarousel(),

            SizedBox(height: 15,),
          ],
        ),
      ),

    );
  }
}