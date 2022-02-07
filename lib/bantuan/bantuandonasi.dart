import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class BantuanDonasi extends StatelessWidget {
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
                      'DONATUR',
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
                          'Bagaimana jika saya belum transfer hingga melewati batas waktu?',
                          style: GoogleFonts.poppins(
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
                              'Anda bisa mengulang proses donasi di galang dana yang ingin dibantu.',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
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
                          'Donasi saya terbatalkan, bagaimana cara berdonasi ke penggalang yang sama?',
                          style: GoogleFonts.poppins(
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
                              'Silahkan lakukan proses donasi kembali dan masukkan nominal dan pilih metode pembayaran anda.',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
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
                          'Bagaimana saya tahu donasi sudah berhasil?',
                          style: GoogleFonts.poppins(
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
                              'Setelah transaksi berhasil anda akan mendapatkan notifikasi atau anda bisa melakukan pengecekan di riwayat transaksi dihalaman beranda atau di “riwayat donasi saya” di halaman donasi.',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
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
                          'Apakah saya wajib konfirmasi setelah transfer donasi?',
                          style: GoogleFonts.poppins(
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
                              'Anda tidak perlu melakukan konfirmasi apabila telah melakukan transfer sesuai dengan nomor yang tertera.',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
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
                          'Apa arti dari status donasi saya?',
                          style: GoogleFonts.poppins(
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
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.black
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sukses : ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    TextSpan(
                                      text: 'Donasi anda telah berhasil kami terima',
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
                                        text: 'Menunggu Pembayaran : ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    TextSpan(
                                      text: 'Donasi anda belum diterima oleh Salur dikarenakan Anda belum melakukan pembayaran',
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
                                        text: 'Gagal : ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    TextSpan(
                                      text: 'Donasi anda dianggap gagal karena telah melewati batas waktu transfer',
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