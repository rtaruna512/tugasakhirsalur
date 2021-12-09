import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';
import 'dart:math';

class transferBCA extends StatefulWidget {
  const transferBCA({Key? key}) : super(key: key);



  @override
  _transferBCAState createState() => _transferBCAState();
}

class _transferBCAState extends State<transferBCA> {
  Color salur1 = const Color(0xff014753);
  final kodeunik = Random().nextInt(1000);


  @override
  Widget build(BuildContext context) {
    var totalpembayaran = nominalTransfer + kodeunik;
    String totalpembayaranString = totalpembayaran.toString();
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
                          'assets/images/bca.png',
                          height: 25,
                          width: 100,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'Bank BCA',
                          style: TextStyle(
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
                          '$rekeningBCA',
                          style: TextStyle(
                            fontSize: 30
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: rekeningBCA));
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
                              style: TextStyle(
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
                      'Nominal : $nominalTransfer',
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
                          'Rp$totalpembayaran',
                          style: TextStyle(
                              fontSize: 30
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
                              style: TextStyle(
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