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
            SizedBox(height: 40,),
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
                          child: Text(
                            transferStatus.nominalTransfer,
                            style: GoogleFonts.poppins(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nama Penerima'),
                                Text('Bank Penerima'),
                                Text('Nomor Rekening Penerima'),
                                Text('Waktu Transaksi'),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('asd'),
                                Text('asd'),
                                Text('asd'),
                                Text('asd'),
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
                            Text('Berita Transfer'),
                            SizedBox(height: 10,),
                            Text('')
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

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
