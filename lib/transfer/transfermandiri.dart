import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:tugasakhirsalur/transfer/transfercek.dart';
import 'package:tugasakhirsalur/transfer/transfermain.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class transferMandiri extends StatefulWidget {
  const transferMandiri({Key? key}) : super(key: key);



  @override
  _transferMandiriState createState() => _transferMandiriState();
}

class _transferMandiriState extends State<transferMandiri> {
  Color salur1 = const Color(0xff014753);
  final kodeunik = Random().nextInt(1000);
  bool isVisible = false;


  @override
  Widget build(BuildContext context) {
    var totalpembayaran = nominalTransfer + kodeunik;
    String totalpembayaranString = totalpembayaran.toString();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: salur1,
        title: Text('Konfirmasi Transfer'),
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
                          'assets/images/mandiri.png',
                          height: 25,
                          width: 100,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'Bank Mandiri',
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '$rekeningMandiri',
                          style: GoogleFonts.poppins(
                              fontSize: 22
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: rekeningMandiri));
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
                                  fontSize: 10,
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
                      'Total Nominal Transfer',
                      style: GoogleFonts.poppins(
                          fontSize: 18
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nominal',
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Kode Unik',
                            ),
                          ],
                        ),
                        SizedBox(width: 25,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$nominalTransfer',
                            ),
                            SizedBox(height: 5,),
                            Text(
                              '$kodeunik',
                            ),
                          ],
                        ),
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Rp$totalpembayaran',
                          style: GoogleFonts.poppins(
                              fontSize: 22
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: totalpembayaranString));
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
                                  fontSize: 10,
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

            SizedBox(height: 15,),

            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: salur1,
                      width: 1
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text('Transfer sebelum'),
                        SizedBox(width: 5,),
                        Text(
                          '10 Desember 2021 13:25',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text('atau'),
                        Spacer()
                      ],
                    ),
                    Text('transaksi akan dibatalkan oleh sistem')
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

            Row(
              children: [
                Text(
                  'Detil Transaksi',
                  style: GoogleFonts.poppins(
                      fontSize: 20
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: salur1,
                      minimumSize: Size(100, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                  ),
                  onPressed: () {
                    setState(() => isVisible = !isVisible);;
                  },
                  child: Text(
                    'Lihat',
                    style: GoogleFonts.poppins(
                        color: Colors.white
                    ),
                  ),
                )
              ],
            ),

            Visibility(
              visible: isVisible,
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: BorderSide(),
                  ),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/mandiri.png',
                            height: 22,
                            width: 100,
                          ),
                        ),

                        Divider(
                          color: Colors.black,
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text('Tujuan Kirim Uang'),
                                  Text('')
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('$rekeningTransferStr'),
                                  Text('Sdr Budi')
                                ],
                              )
                            ],
                          ),
                        ),

                        Divider(
                          color: Colors.black,
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text('Nominal'),
                              Spacer(),
                              Text('$nominalTransfer')
                            ],
                          ),
                        ),

                        Divider(
                          color: Colors.black,
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text('Biaya'),
                              Spacer(),
                              Text('Rp0')
                            ],
                          ),
                        ),

                        Divider(
                          color: Colors.black,
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text('Kode Unik'),
                              Spacer(),
                              Text('$kodeunik')
                            ],
                          ),
                        ),

                        Divider(
                          color: Colors.black,
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Berita Transfer'),
                              SizedBox(height: 10,),
                              Text('$beritaTransferText')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity,50),
                ),
                child: Text(
                  'SAYA SUDAH TRANSFER',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferCek()));
                },
              ),
            ),

            SizedBox(height: 5,),

            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TransferBeranda()));
                },
                style: TextButton.styleFrom(
                  textStyle: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                  ),
                ),
                child: Text(
                  'Batalkan Transaksi',
                  style: GoogleFonts.poppins(
                    color: salur1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}