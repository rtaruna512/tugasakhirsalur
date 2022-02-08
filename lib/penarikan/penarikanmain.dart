import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/beranda.dart';
import 'package:tugasakhirsalur/donasi/donasimain.dart';
import 'package:tugasakhirsalur/penarikan/penarikanasetpendanaan.dart';
import 'package:tugasakhirsalur/penarikan/penarikankodeunik.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class PenarikanBeranda extends StatelessWidget {
  const PenarikanBeranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: salur1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BerandaMenu()));
          },
        ),
        title: Text('Tarik Saldo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: salur12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Saldo Aset Pendanaan',
                      style: TextStyle(
                        fontSize: 13
                      ),
                    ),

                    SizedBox(height: 5,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: RichText(
                        text: TextSpan(
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.black,
                              fontWeight: FontWeight.w600
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Rp',
                              ),
                              TextSpan(
                                text: '25000',
                              )
                            ]
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Text(
                      'Saldo Kode Unik',
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: RichText(
                        text: TextSpan(
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Rp',
                              ),
                              TextSpan(
                                text: '25000',
                              )
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),
            
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(15),
                color: salur18,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'PENTING',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                            fontSize: 13
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*Penarikan saldo ',
                            ),
                            TextSpan(
                              text: 'aset pendanaan',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            TextSpan(
                              text: ' bisa dilakukan jika masa tenor telah selesai',
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                            fontSize: 13
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*Minimal penarikan saldo ',
                            ),
                            TextSpan(
                              text: 'kode unik',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            TextSpan(
                              text: ' adalah Rp20000',
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                            fontSize: 13
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*Penarikan saldo hanya dapat dikirimkan ke akun rekening yang terdatar pada aplikasi salur',
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    'TARIK SALDO ASET PENDANAAN',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PenarikanAsetPendanaan()));
              },
            ),

            SizedBox(height: 15,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    'TARIK SALDO KODE UNIK',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PenarikanKodeUnik()));
              },
            ),

            Spacer(),

            Container(
              child: Text(
                'Saldo kode unik anda juga bisa digunakan untuk berdonasi',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13
                ),
              ),
            ),

            SizedBox(height: 5,),

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
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    "Donasi Sekarang",
                    style: GoogleFonts.poppins(
                        color: salur13,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
