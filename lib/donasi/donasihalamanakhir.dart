import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/donasi/donasimain.dart';

class donasiHalamanAkhir extends StatelessWidget {
  Color salur1 = const Color(0xff014753);

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
            Image.asset('assets/images/1.png'),
            Text(
              'Terima kasih sudah berdonasi',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),
            Text(
              '“Terima kasih atas donasi yang anda berikan, donasi yang anda berikan sangat membantu, semoga sehat selalu dan tidak berhenti untuk berdonasi”',
              style: GoogleFonts.poppins(
                fontSize: 15,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DonasiBeranda()));
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
