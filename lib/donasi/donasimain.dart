import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/beranda.dart';
import 'package:tugasakhirsalur/donasi/donasiriwayat.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/donasilistview.dart';
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => BerandaMenu()));
          },
        ),
        title: Text('Donasi', textAlign: TextAlign.center,),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
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
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => donasiRiwayatmenu()));
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

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: TextField(
                  onChanged: (value){

                  },
                  style: GoogleFonts.poppins(
                    color:salur17,
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Cari Pendanaan',
                      hintStyle: GoogleFonts.poppins(
                        color:salur17,
                        fontStyle: FontStyle.italic,
                        fontSize: 13,

                      ),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: salur18
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 0, color: salur18)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 0, color: salur18)
                      ),
                      suffixIcon: Icon(Icons.search, color:salur17,size: 18,)
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                  child: donasiCarousel()
              ),
            ),
          ],
        ),
      ),

    );
  }
}