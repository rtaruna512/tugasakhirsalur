import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class donasiBSI extends StatefulWidget {
  const donasiBSI({Key? key}) : super(key: key);



  @override
  _donasiBSIState createState() => _donasiBSIState();
}

class _donasiBSIState extends State<donasiBSI> {
  Color salur1 = const Color(0xff014753);
  final kodeunik = Random().nextInt(1000);


  @override
  Widget build(BuildContext context) {
    var totaldonasi = nominalDonasi + kodeunik;
    String totaldonasiString = totaldonasi.toString();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: salur1,
        title: Text('Pilih Metode Transfer'),
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
          children: [
            SizedBox(height: 15,),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: salur1,
                  width: 1,
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15,),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/bsi.png',
                          height: 25,
                          width: 100,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'Bank BSI',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )

                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[350],
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '$rekeningBSI',
                          style: GoogleFonts.poppins(
                              fontSize: 30
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: rekeningBSI));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tersalin ke clipboard!')));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: salur1,
                                    width: 1
                                )
                            ),
                            child: Text(
                              'Salin',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: salur1
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Nominal : $nominalDonasi',
                    ),
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Kode Unik : $kodeunik',
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[350],
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Rp$totaldonasi',
                          style: GoogleFonts.poppins(
                              fontSize: 30
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: totaldonasiString));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tersalin ke clipboard!')));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: salur1,
                                    width: 1
                                )
                            ),
                            child: Text(
                              'Salin',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: salur1
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),
                ],
              ),
            ),
            Spacer(),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity,50),
                ),
                child: Text('Saya Sudah Transfer'),
                onPressed: (){
                  //transfer transfer
                },
              ),
            ),

            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}