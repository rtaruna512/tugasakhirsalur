import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanpasar.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanriwayat.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';



class pendanaanBeranda extends StatefulWidget {
  @override
  _pendanaanBerandaState createState() => _pendanaanBerandaState();
}

class _pendanaanBerandaState extends State<pendanaanBeranda> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pendanaan',
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        backgroundColor: salur1,
        elevation: 0,
      ),
      body: Padding(
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
              child: Container(
                width: 320,
                height: 220,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0, 0),
                        colors: <Color>[
                          gradientGLight,
                          gradientGdark
                        ]
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                      )
                    ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Total Aset Pendanaan',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Rp250.000',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 30
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sisa Pokok',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Angsuran Terbayar',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Mitra Aktif',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 30,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rp 0',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Rp 0',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  '0 Mitra',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            )
                          ],
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
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Portofolio Saya',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: salur1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanRiwayatmenu()));
                    },
                    child: Text(
                      'Transaksi saya',
                      style: GoogleFonts.poppins(),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                      )
                    ]
                ),
                child: ExpansionTile(
                  title: Text('Pendanaan Aktif'),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),

                              Text(
                                'Pokok Diterima',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Sisa Pokok',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Total Pendanaan Aktif',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Bagi hasil Diterima',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),
                            ],
                          ),

                          Spacer(),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 5,),

                              Text(
                                'Rp 0',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Rp 0',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Rp 0',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Rp 0',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),



                              SizedBox(height: 10,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                      )
                    ]
                ),
                child: ExpansionTile(
                  title: Text('Kualitas Pendanaan'),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),

                              Text(
                                'Jumlah Mitra',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Pembayaran Lancar',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),
                            ],
                          ),

                          Spacer(),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 5,),

                              Text(
                                'Rp 0',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Rp 0',
                                style: GoogleFonts.poppins(
                                    fontSize: 15
                                ),
                              ),

                              SizedBox(height: 10,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                      )
                    ]
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          'Proses Pencarian',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Rp 0',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),

            SizedBox(height: 15,),

            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanPasar()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                child:
                Text(
                  "Lihat Pasar Pendanaan",
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
