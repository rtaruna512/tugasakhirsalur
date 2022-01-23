import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/widget/pendanaancarousel.dart';
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
                  color:Colors.grey[800],
                ),
                decoration: InputDecoration(
                    hintText: 'Cari Pendanaan',
                    hintStyle: GoogleFonts.poppins(
                      color:Colors.grey[800],
                      fontStyle: FontStyle.italic,
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: (Colors.grey[300])!,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: (Colors.grey[300])!,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    suffixIcon: Icon(Icons.search, color:Colors.grey[800])
                ),
              ),
            ),

            SizedBox(height: 5,),

            pendanaanCarousel(),

            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
