import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/donasi/donasimain.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';

class donasiHalamanAkhir extends StatelessWidget {

  @override
  var totaldonasiterbayar = nominalDonasi;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: salur1,
        title: Text('Donasi'),
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
        child: ListView(
          children: [
            Image.asset(
              'assets/images/1.png',
              height: 255,
            ),
            Text(
              'Terima kasih sudah berdonasi',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: salur13
                )
              ),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Jumlah Donasi',
                    style: GoogleFonts.poppins(
                      fontSize: 18
                    ),
                  ),
                  Spacer(),
                  Container(
                      child: Row(
                        children: [
                          Text(
                            'Rp',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            nominalDonasi.toString(),
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pesan kepada penerima',
                    style: GoogleFonts.poppins(
                        fontSize: 16
                    ),
                  ),
                  Container(
                    width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: salur1,
                              width: 2
                          )
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(beritaDonasiText)
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Text(
              '“Terima kasih atas donasi yang anda berikan, donasi yang anda berikan sangat membantu, semoga sehat selalu dan tidak berhenti untuk berdonasi”',
              style: GoogleFonts.poppins(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20,),

            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DonasiBeranda()));
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
