import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class BerandaRiwayat extends StatefulWidget {

  @override
  _BerandaRiwayatState createState() => _BerandaRiwayatState();
}

class _BerandaRiwayatState extends State<BerandaRiwayat> {

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
                style: GoogleFonts.poppins(
                  color:Colors.lightGreen[800],
                ),
                decoration: InputDecoration(
                    hintText: 'Cari catatan',
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
          ],
        ),
      ),
    );
  }
}
