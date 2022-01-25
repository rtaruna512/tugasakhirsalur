import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/pendanaanlistview.dart';
import 'package:google_fonts/google_fonts.dart';

class pendanaanPasar extends StatefulWidget {
  @override
  _pendanaanPasarState createState() => _pendanaanPasarState();
}

class _pendanaanPasarState extends State<pendanaanPasar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pasar Mitra Pendanaan',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: TextField(
                onChanged: (value){

                },
                style: GoogleFonts.poppins(
                  color:salur17,
                  fontSize: 13,
                ),
                decoration: InputDecoration(
                    hintText: 'Cari Tujuan Donasi',
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

            SizedBox(height: 5,),

            Flexible(child: Container(child: pendanaanCarousel())),
          ],
        ),
      ),
    );
  }
}
