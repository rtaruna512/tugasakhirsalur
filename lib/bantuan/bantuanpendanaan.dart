import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class BantuanPendanaan extends StatelessWidget {
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
                      'PENDANAAN',
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
                          'Apakah itu pendanaan Crowdfunding?',
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
                              'Pendanaan Crowdfunding merupakan salah satu tipe pendanaan yang memungkinkan beberapa pendana untuk mendanai 1 peminjam dana/mitra secara bersama-sama. Sehingga plafon lebih ringan dan pendana memiliki kesempatan untuk bisa melakukan diversifikasi investasi.',
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
                          'Apa keuntungan dari pendanaan Crowdfunding dibandingkan dengan pendanaan biasa?',
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
                              'Dengan mengikuti pendanaan Crowdfunding, pendana dapat mendanai dengan plafon yang lebih terjangkau dan sangat cocok untuk pendana pemula. Dengan plafon yang lebih terjangkau, pendana juga dapat lebih mudah melakukan diversifikasi portofolio dengan mendanai beberapa mitra sekaligus.',
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
                          'Apakah peer-to-peer (P2P) lending itu?',
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
                              'Salur adalah sebuah wadah yang mempertemukan calon penerima pinjaman dengan pemberi dana (pendana) secara langsung dan menjadi perantara yang mengurus perjanjian hutang piutang kedua belah pihak serta mengawasi pembayarannya. Layanan ini disebut Peer-to-Peer (P2P) Lending.Kami menjalankannya lewat aplikasi teknologi, sehingga mampu menurunkan biaya operasional dan lebih efisien.',
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
                          'Apakah Yang Dimaksud Dengan Akad Pendanaan?',
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
                              'Akad pendanaan sudah berlaku jika sudah verfikasi akun dengan ini anda sudah menyetujui syarat dan ketentuan umum yang berlaku',
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
                          'Siapa Saja Yang Dapat Menjadi Pendana di Salur?',
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
                              'Siapapun yang memiliki rekening bank penerbit Indonesia dapat bergabung dengan Salur sebagai pendana',
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
                          'Saya sangat berhati-hati terhadap risiko pendanaan. Bagaimana saya mengurangi risiko pendanaan saya?',
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
                              'Kami menyarankan agar pendana dapat mempelajari dengan seksama risiko terkait dengan fintech dan P2P Lending secara umum.',
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

              ],
            )
        )
    );
  }
}