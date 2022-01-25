import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/data/datapendanaanriwayat.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanmain.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class pendanaanSukses extends StatelessWidget {
  final RiwayatPendanaan pendanaanStatus;

  pendanaanSukses({required this.pendanaanStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: salur1,
        title: Text('Pendanaan'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(
              'assets/images/2.png',
              height: 255,
            ),
            Container(
              child:
              Text(
                'PENDANAAN BERHASIL',
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                      color: salur13,
                      width: 2
                  ),
                ),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nama Penerima', style: GoogleFonts.poppins(fontSize: 13),),
                                SizedBox(height: 10,),
                                Text('Pembayaran Plafond', style: GoogleFonts.poppins(fontSize: 13),),
                                SizedBox(height: 10,),
                                Text('Waktu Transaksi', style: GoogleFonts.poppins(fontSize: 13),),
                              ],
                            ),
                            Spacer(),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(pendanaanStatus.namaDebitor, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Rp${pendanaanStatus.nominalPendanaanAkhir.toString()}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text(pendanaanStatus.tanggalPendanaan, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),),
                                      Text(', ', style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),),
                                      Text(pendanaanStatus.jamPendanaan, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Spacer(),

            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanBeranda()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(width: 3, color: salur13)
                    ),
                    primary: Colors.white
                ),
                child:
                Text(
                  "Ke halaman utama",
                  style: GoogleFonts.poppins(
                      color: salur13,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
