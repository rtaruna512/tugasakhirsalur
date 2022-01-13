import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datadonasi.dart';
import 'package:tugasakhirsalur/donasi/donasiinput.dart';
import 'package:google_fonts/google_fonts.dart';



class DonasiKeterangan extends StatefulWidget {
  final Donasi donasiPilihan;

  DonasiKeterangan({required this.donasiPilihan});
  @override
  _State createState() => _State();
}

class _State extends State<DonasiKeterangan>{
  Color salur1 = const Color(0xff014753);
  Color salurwidgetbg = const Color(0xb3D2DDAF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: salur1,
          title: Text(
            "Donasi",
          ),
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                   Hero(
                     tag:widget.donasiPilihan.imageURL,
                     child: Container(
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                       ),
                       child: ClipRRect(
                         child: Image(
                           height: 250,
                           width: 400,
                           image: AssetImage(widget.donasiPilihan.imageURL),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                   ),

                   SizedBox(height: 15,),

                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(
                           'Salurkan Bantuan Anda ke',
                         style: GoogleFonts.poppins(
                           fontSize: 22,
                         ),
                       ),

                       SizedBox(height: 5,),

                       Text(
                         widget.donasiPilihan.judulDonasi,
                         style: GoogleFonts.poppins(
                             fontSize: 22,
                             fontWeight: FontWeight.bold
                         ),
                         textAlign: TextAlign.left,
                       ),

                       SizedBox(height: 5,),

                       Row(
                         children: [
                           Text(
                               'Lokasi: ',
                             style: GoogleFonts.poppins(
                                 fontSize: 18
                             ),
                           ),
                           Text(
                             widget.donasiPilihan.lokasi,
                             style: GoogleFonts.poppins(
                               fontSize: 18,
                               fontWeight: FontWeight.bold
                             ),
                           ),
                         ],
                       )
                     ],
                   ),

                   SizedBox(height: 15,),

                   Container(
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize: const Size(double.infinity,50),
                       ),
                       child: Text(
                           'Salurkan sekarang',
                         style: GoogleFonts.poppins(
                           color: Colors.black
                         ),
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DonasiInput()));
                       },
                     ),
                   ),

                   SizedBox(height: 15,),

                   Container(
                     padding: EdgeInsets.all(10),
                     alignment: Alignment.topLeft,
                     decoration: BoxDecoration(
                       color: salurwidgetbg,
                       borderRadius: BorderRadius.circular(5)
                     ),
                     width: 365,
                     height: 150,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           'Informasi penggalang dana:',
                           style: GoogleFonts.poppins(
                             fontSize: 17
                           ),
                         ),
                         SizedBox(height: 5,),
                         Text(
                           widget.donasiPilihan.keterangan,
                           style: GoogleFonts.poppins(
                             fontSize: 17
                           ),
                         )
                       ],
                     ),
                   )
                 ]
          ),
        )
    );
  }
}