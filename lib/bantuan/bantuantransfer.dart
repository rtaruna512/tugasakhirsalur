import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class BantuanTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Bantuan',
            style: GoogleFonts.poppins(
                color: Colors.black
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.center,
                    child: Text(
                      'KIRIM UANG',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                        fontWeight: FontWeight.w500
                      ),
                    )
                ),

                SizedBox(height: 15,),

                Container(
                  width: 360,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 360,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                          color: salur15,
                        ),
                        child: Text(
                          'Nominal transfer salah/tidak memasukkan kode unik',
                          style: TextStyle(
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Container(
                        width: 330,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: salur16,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Sistem aplikasi salur tidak memproses transaksi jika nominal yang dimasukkan berbeda dengan nominal transaksi yang kami berikan.\n',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.black
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Jika ingin transaksi tetap diproses, ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    TextSpan(
                                      text: 'lakukan transfer kembali dengan nominal yang sama dengan kami berikan.',
                                    )
                                  ]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  width: 360,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 360,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                          color: salur15,
                        ),
                        child: Text(
                          'Waktu transaksi lama/belum sampai ke tujuan',
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Container(
                        width: 330,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: salur16,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Pastikan nominal yang kamu transfer ke rekening salur benar dan sama dengan nominal yang ada pada transaksi kamu.\n',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.black
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Jika nominal yang transfer sudah benar dan sama, ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    TextSpan(
                                      text: 'maka refresh secara berkala halaman kirim uang atau halaman beranda.\n',
                                    )
                                  ]
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.black
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Gangguan pada sistem bank ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    TextSpan(
                                      text: 'bank juga dapat mempengaruhi proses transaksi yang lama/belum sampai.',
                                    )
                                  ]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            )
        )
    );
  }
}