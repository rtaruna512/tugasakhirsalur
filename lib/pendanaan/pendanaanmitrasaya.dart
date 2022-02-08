import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/data/datapendanaanriwayat.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class MitraSaya extends StatefulWidget {

  final RiwayatPendanaan riwayatdanapilihan;

  MitraSaya({required this.riwayatdanapilihan});

  @override
  _MitraSayaState createState() => _MitraSayaState();
}

class _MitraSayaState extends State<MitraSaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
          'Mitra Saya',
          style: GoogleFonts.poppins(
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child:ListView(
          padding: EdgeInsets.all(5),
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(
                            blurRadius: 10,
                            color: Colors.black26,
                            offset: Offset(0,6),)
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: ExactAssetImage(widget.riwayatdanapilihan.avatarURL),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        widget.riwayatdanapilihan.namaDebitor,
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        widget.riwayatdanapilihan.namaUsaha,
                        style: GoogleFonts.poppins(
                            fontSize: 13
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 14,
                          ),
                          Text(
                            widget.riwayatdanapilihan.lokasi,
                            style: GoogleFonts.poppins(
                                fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinearPercentIndicator(
                    padding: EdgeInsets.all(5),
                    lineHeight: 25,
                    percent: (widget.riwayatdanapilihan.pembayaranke / widget.riwayatdanapilihan.tenor),
                    linearStrokeCap: LinearStrokeCap.butt,
                    backgroundColor: Colors.grey,
                    progressColor: salur1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: RichText(
                      text: TextSpan(
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Pembayaran ke ',
                            ),
                            TextSpan(
                              text: widget.riwayatdanapilihan.pembayaranke.toString(),
                            ),
                            TextSpan(
                              text: ' dari ',
                            ),
                            TextSpan(
                              text: widget.riwayatdanapilihan.tenor.toString(),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pembayaran',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Pokok Diterima'),
                            Spacer(),
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Rp',
                                    ),
                                    TextSpan(
                                      text: (widget.riwayatdanapilihan.pembayaranke * widget.riwayatdanapilihan.nominalPokok).toString(),
                                    ),
                                  ]
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Bagi Hasil Diterima'),
                            Spacer(),
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Rp',
                                    ),
                                    TextSpan(
                                      text: (widget.riwayatdanapilihan.pembayaranke * widget.riwayatdanapilihan.nominalBagiHasil).toString(),
                                    ),
                                  ]
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(context: context, builder: (context) => AlertDialog(
                      contentPadding: EdgeInsets.all(15),
                      insetPadding: EdgeInsets.all(15),
                      backgroundColor: salur1,
                      content: Container(
                        width: 500,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'DETAIL PEMBAYARAN',
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5,),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: 250,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Pokok Diterima',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white
                                                ),
                                              ),
                                              Spacer(),
                                              RichText(
                                                text: TextSpan(
                                                    style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: 'Rp',
                                                      ),
                                                      TextSpan(
                                                        text: (widget.riwayatdanapilihan.pembayaranke * widget.riwayatdanapilihan.nominalPokok).toString(),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 5,),
                                          Row(
                                            children: [
                                              Text(
                                                'Bagi Hasil Diterima',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white
                                                ),
                                              ),
                                              Spacer(),
                                              RichText(
                                                text: TextSpan(
                                                    style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: 'Rp',
                                                      ),
                                                      TextSpan(
                                                        text: (widget.riwayatdanapilihan.pembayaranke * widget.riwayatdanapilihan.nominalBagiHasil).toString(),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            SizedBox(height: 15,),

                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: 5,),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text('Pokok'),
                                        RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Rp',
                                                ),
                                                TextSpan(
                                                  text: widget.riwayatdanapilihan.nominalPokok.toString(),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text('Bagi Hasil'),
                                        RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Rp',
                                                ),
                                                TextSpan(
                                                  text: widget.riwayatdanapilihan.nominalBagiHasil.toString(),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text('TGL Bayar'),
                                        RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Rp',
                                                ),
                                                TextSpan(
                                                  text: '12/2/2022',
                                                ),
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                ],
                              ),
                            ),

                            SizedBox(height: 15,),

                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: 5,),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text('Pokok'),
                                        RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Rp',
                                                ),
                                                TextSpan(
                                                  text: widget.riwayatdanapilihan.nominalPokok.toString(),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text('Bagi Hasil'),
                                        RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Rp',
                                                ),
                                                TextSpan(
                                                  text: widget.riwayatdanapilihan.nominalBagiHasil.toString(),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text('TGL Bayar'),
                                        RichText(
                                          text: TextSpan(
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Rp',
                                                ),
                                                TextSpan(
                                                  text: '12/2/2022',
                                                ),
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                ],
                              ),
                            ),

                            SizedBox(height: 15,),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 40),
                                  alignment: Alignment.center
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Center(
                                  child: Text('Tutup', style: GoogleFonts.poppins(fontWeight: FontWeight.w600),)),
                            )
                          ],
                        ),
                      ),
                    ));
                  },
                  child: Text(
                    'DETAIL PEMBAYARAN',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: salur8,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),

                            Text(
                              'Bagi hasil',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              'Sisa Pokok',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              'Jatuh Tempo',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              'Tenor',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              'Angsuran Mingguan',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              'Penghasilan Perbulan',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              'Pekerjaan',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              'Sektor',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              'Akad',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 5,),
                          ],
                        ),

                        Spacer(),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 5,),

                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: widget.riwayatdanapilihan.persenbagihasil.toString(),
                                    ),
                                    TextSpan(
                                      text: '%',
                                    )
                                  ]
                              ),
                            ),

                            SizedBox(height: 10,),

                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Rp',
                                    ),
                                    TextSpan(
                                      text: (widget.riwayatdanapilihan.nominalPendanaanAkhir - (widget.riwayatdanapilihan.pembayaranke * widget.riwayatdanapilihan.nominalPokok)).toString(),
                                    )
                                  ]
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              widget.riwayatdanapilihan.tanggalJatuhTempo,
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: widget.riwayatdanapilihan.tenor.toString(),
                                    ),
                                    TextSpan(
                                      text: ' Minggu',
                                    )
                                  ]
                              ),
                            ),

                            SizedBox(height: 10,),

                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Rp',
                                    ),
                                    TextSpan(
                                      text: (widget.riwayatdanapilihan.nominalPokok + widget.riwayatdanapilihan.nominalBagiHasil).toString(),
                                    )
                                  ]
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              widget.riwayatdanapilihan.penghasilanPerbulan,
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              widget.riwayatdanapilihan.pekerjaan,
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              widget.riwayatdanapilihan.sektor,
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              widget.riwayatdanapilihan.akad,
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),

                            SizedBox(height: 5,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: salur1
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Risiko Pendanaan',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Risiko yang dihadapi mitra usaha yang mungkin terjadi:',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '1. Persaingan antar penjual mempengaruhi permintaan penjualan',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '2. karakteristik dan pengetahuan market mempengaruhi penjualan',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '3. keadaan ekonomi wilayah mitra tersebut',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
