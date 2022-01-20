import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/data/datatransferriwayat.dart';
import 'package:tugasakhirsalur/transfer/transfermain.dart';

class transferSukses extends StatelessWidget {
  final RiwayatTransfer transferStatus;
  Color salur1 = const Color(0xff014753);

  transferSukses({required this.transferStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: salur1,
        title: Text('Kirim Uang'),
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
            Image.asset('assets/images/2.png'),
            Container(
              child:
              Text(
                'KIRIM UANG BERHASIL',
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                Spacer(),
                Text(
                  'Waw! kamu sudah berhemat',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 5,),
                Text(
                  'Rp6.500',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                    color: Colors.lightGreen,
                    width: 2
                  ),
                ),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)
                          ),
                          color: Colors.lightGreen,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Rp',
                                style: GoogleFonts.poppins(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                transferStatus.nominalTransfer.toString(),
                                style: GoogleFonts.poppins(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nama Penerima', style: GoogleFonts.poppins(fontSize: 13),),
                                Text('Bank Penerima', style: GoogleFonts.poppins(fontSize: 13),),
                                Text('Nomor Rekening Penerima', style: GoogleFonts.poppins(fontSize: 13),),
                                Text('Waktu Transaksi', style: GoogleFonts.poppins(fontSize: 13),),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(transferStatus.namaTujuan, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),),
                                Text(transferStatus.bankTujuan, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),),
                                Text(transferStatus.rekeneingTujuan, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),),
                                Row(
                                  children: [
                                    Text(transferStatus.tanggalTransfer, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),),
                                    Text(', ', style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),),
                                    Text(transferStatus.jamTransfer, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      Divider(
                        color: Colors.lightGreen,
                        height: 1,
                        thickness: 2,
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Berita Transfer', style: GoogleFonts.poppins(fontSize: 13, decoration: TextDecoration.underline),),
                            SizedBox(height: 10,),
                            Text(transferStatus.beritaTransfer, style: GoogleFonts.poppins(fontSize: 13),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: Text(
                'Silahkan screenshot halaman ini sebagai bukti transaksi anda',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
            ),

            SizedBox(height: 15,),

            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TransferBeranda()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                  ),
                ),
                child:
                Text(
                  "Kembali ke Beranda",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
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
