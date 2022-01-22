import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/donasicarousel.dart';
import 'package:google_fonts/google_fonts.dart';

class DonasiBeranda extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DonasiBeranda> {


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
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                ),
                color: salur1,
              ),
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
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                      )
                    ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Anda sudah berbagi',
                          style: GoogleFonts.poppins(
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'Rp250.000',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 27
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/mastercard.png',
                          height: 45,
                          width: 45,
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Ayo Bantu Sekarang',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: salur1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: () {

                    },
                    child: Text(
                      'Donasi saya',
                      style: GoogleFonts.poppins(),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: (value){

                },
                style: GoogleFonts.poppins(
                  color:Colors.lightGreen[800],
                ),
                decoration: InputDecoration(
                    hintText: 'Cari tujuan donasi',
                    hintStyle: GoogleFonts.poppins(
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

            donasiCarousel(),

            SizedBox(height: 15,),
          ],
        ),
      ),

    );
  }
}