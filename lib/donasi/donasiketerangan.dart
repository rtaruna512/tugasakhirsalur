import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datadonasi.dart';
import 'package:tugasakhirsalur/donasi/donasiinput.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';


class DonasiKeterangan extends StatefulWidget {
  final Donasi donasiPilihan;

  DonasiKeterangan({required this.donasiPilihan});
  @override
  _State createState() => _State();
}

class _State extends State<DonasiKeterangan>{

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
          child: ListView(
              children: <Widget>[
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Hero(
                       tag:widget.donasiPilihan.imageURL,
                       child: Container(
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                         ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(15),
                           child: Image(
                             height: 250,
                             width: 400,
                             image: AssetImage(widget.donasiPilihan.imageURL),
                             fit: BoxFit.cover,

                           ),
                         ),
                       ),
                     ),
                   ),

                   SizedBox(height: 15,),

                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Column(
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
                       ],
                     ),
                   ),

                SizedBox(height: 15,),

                   Container(
                     child: Column(
                       children: [
                         Row(
                           children: [
                             SizedBox(width: 10,),
                             Row(
                               children: [
                                 Text(
                                   'Rp',
                                   style: GoogleFonts.poppins(
                                     color: salur1,
                                     fontSize: 18,
                                     fontWeight: FontWeight.w500
                                   ),
                                 ),
                                 Text(
                                   widget.donasiPilihan.penggalanganTerkumpul.toString(),
                                   style: GoogleFonts.poppins(
                                       color: salur1,
                                       fontSize: 18,
                                       fontWeight: FontWeight.w500
                                   ),
                                 ),
                               ],
                             ),
                             Text(' terkumpul dari Rp'),
                             Text(widget.donasiPilihan.targetPenggalangan.toString()),
                             SizedBox(width: 10,),
                           ],
                         ),
                         SizedBox(height: 10,),
                         LinearPercentIndicator(
                           lineHeight: 14.0,
                           percent: widget.donasiPilihan.penggalanganTerkumpul/widget.donasiPilihan.targetPenggalangan,
                           linearStrokeCap: LinearStrokeCap.butt,
                           backgroundColor: salur9,
                           progressColor: salur1,
                         ),
                         Row(
                           children: [
                             SizedBox(width: 10,),
                             Container(
                               child:
                               Row(
                                 children: [
                                   Text(
                                     widget.donasiPilihan.totalDonor.toString(),
                                     style: GoogleFonts.poppins(),
                                   ),
                                   Text(
                                     ' penyalur',
                                     style: GoogleFonts.poppins(),
                                   ),
                                 ],
                               ),
                             ),
                             Spacer(),
                             Container(
                               child:
                               Row(
                                 children: [
                                   Text(
                                     widget.donasiPilihan.sisaHariDonasi.toString(),
                                     style: GoogleFonts.poppins(),
                                   ),
                                   Text(
                                     ' hari',
                                     style: GoogleFonts.poppins(),
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(width: 10,),
                           ],
                         )
                       ],
                     ),
                   ),

                   SizedBox(height: 30,),

                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize: const Size(double.infinity,50),
                       ),
                       child: Text(
                           'Salurkan sekarang',
                         style: GoogleFonts.poppins(
                           color: Colors.black,
                           fontSize: 18,
                           fontWeight: FontWeight.w600
                         ),
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DonasiInput()));
                       },
                     ),
                   ),

                   SizedBox(height: 30,),

                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                       decoration: BoxDecoration(
                         border: Border.all(

                         ),
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: <Widget>[
                           Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   boxShadow: [BoxShadow(
                                     blurRadius: 10,
                                     color: Colors.black26,
                                     offset: Offset(0,6),)
                                   ],
                                 ),
                                 child: CircleAvatar(
                                   radius: 40,
                                   backgroundImage: ExactAssetImage(widget.donasiPilihan.imagePenggalang),

                                 ),
                               ),
                             ],
                           ),

                           SizedBox(width: 10,),

                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               Text(
                                 widget.donasiPilihan.namaPenggalang,
                                 style: GoogleFonts.poppins(
                                     fontSize: 17
                                 ),
                               ),
                               Row(
                                 children: [
                                   Text(
                                     'Penggalang ',
                                     style: GoogleFonts.poppins(
                                         fontSize: 13
                                     ),
                                   ),
                                   Text(
                                     widget.donasiPilihan.statusPenggalang,
                                     style: GoogleFonts.poppins(
                                         fontSize: 13
                                     ),
                                   ),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Icon(
                                     Icons.location_on,
                                     size: 14,
                                   ),
                                   Text(
                                     widget.donasiPilihan.lokasi,
                                     style: GoogleFonts.poppins(
                                         fontSize: 14
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           )
                         ],
                       ),
                     ),
                   ),

                   SizedBox(height: 30,),

                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'Cerita dari penggalang',
                           style: GoogleFonts.poppins(
                             fontSize: 17,
                             fontWeight: FontWeight.w600
                           ),
                         ),
                         Container(
                           padding: EdgeInsets.all(10),
                           alignment: Alignment.topLeft,
                           decoration: BoxDecoration(
                             color: salur7,
                             borderRadius: BorderRadius.circular(5)
                           ),
                           width: 365,
                           child: Text(
                             widget.donasiPilihan.keterangan,
                             style: GoogleFonts.poppins(
                               fontSize: 17,
                             ),
                             textAlign: TextAlign.justify,
                           ),
                         ),
                       ],
                     ),
                   ),
                SizedBox(height: 15,),
              ]
          ),
        )
    );
  }
}