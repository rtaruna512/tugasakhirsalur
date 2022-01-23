import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/transfer/transfertujuan.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/transferriwayatcarousel.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferBeranda extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: salur1,
          centerTitle: true,
          title: Text(
            'Kirim Uang',
            style: GoogleFonts.poppins(
              color: Colors.white,
            ),
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      body:Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                ),
                color: salur1,
              ),
              child:
              Container(
                width: 320,
                height: 200,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0, 0),
                        colors: <Color>[
                          gradientGLight,
                          gradientGdark
                        ]
                    )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Saldo Kode Unik anda',
                          style: GoogleFonts.poppins(
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Rp250.000',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 27
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text(
                          'Anda sudah berhemat',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 11
                          ),
                        ),
                        Text(
                          'Rp100.000',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 11
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/mastercard.png',
                          height: 45,
                          width: 45,
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),

            Container(
              alignment: Alignment.center,
              child:
              Text(
                'Riwayat Transaksi',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            transferRiwayatCarousel(),

            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(500, 45)
                ),
                child: Text(
                  'Kirim Uang Sekarang',
                  style: GoogleFonts.poppins(
                    color: Colors.black
                  ),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferTujuan())
                  );
                },
              )
            )
          ],
        )
      )
    );
  }
}