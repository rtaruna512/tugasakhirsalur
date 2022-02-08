import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/penarikan/penarikanmain.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class PenarikanCek extends StatelessWidget {
  const PenarikanCek({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/3.png'),
            SizedBox(height: 30,),
            Text(
              'Salur sedang mengecek transaksi',
              style: GoogleFonts.poppins(
                  fontSize: 21,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              'Saldo yang anda masukkan akan dikirimkan ke rekening anda',
              style: GoogleFonts.poppins(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
            Text(
              'Kami akan menginfokan transaksi melalui halaman riwayat, refresh secara berkala halaman riwayat',
              style: GoogleFonts.poppins(
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),

            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PenarikanBeranda()));
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
