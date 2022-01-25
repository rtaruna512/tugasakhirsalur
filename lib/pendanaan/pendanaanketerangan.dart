import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tugasakhirsalur/data/datapendanaan.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanpembayaran.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';

class pendanaanKeterangan extends StatefulWidget {
  final Pendanaan pendanaanPilihan;

  pendanaanKeterangan({required this.pendanaanPilihan});
  @override
  _pendanaanKeteranganState createState() => _pendanaanKeteranganState();
}

class _pendanaanKeteranganState extends State<pendanaanKeterangan> {



  void add () {
    setState(() {
      if (nominalPendanaanAwal != widget.pendanaanPilihan.sisaPlafond) {
        nominalPendanaanAwal = nominalPendanaanAwal + 100000;
      }
    });
  }

  void minus () {
    setState(() {
      if (nominalPendanaanAwal != 100000) {
        nominalPendanaanAwal = nominalPendanaanAwal - 100000;
      }
    });
  }

  bool isVisibleResiko = false;
  bool isVisibleRiwayat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Mitra',
          style: GoogleFonts.poppins(
            color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              padding: EdgeInsets.all(15),
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                              backgroundImage: ExactAssetImage(widget.pendanaanPilihan.avatarURL),

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
                            widget.pendanaanPilihan.namaDebitor,
                            style: GoogleFonts.poppins(
                                fontSize: 17
                            ),
                          ),
                          Text(
                            widget.pendanaanPilihan.namaUsaha,
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
                                widget.pendanaanPilihan.lokasi,
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 15,),

                Card(
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
                                'Plafond',
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
                                'Bagi hasil',
                                style: GoogleFonts.poppins(
                                  fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                'Pendanaan ke',
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
                                'Penghasilan perbulan',
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

                              Text(
                                widget.pendanaanPilihan.plafond.toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                widget.pendanaanPilihan.tenor,
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                widget.pendanaanPilihan.bagihasilTotal,
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                widget.pendanaanPilihan.pendanaanKe,
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                widget.pendanaanPilihan.angsuranMingguan,
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                widget.pendanaanPilihan.penghasilanPerbulan,
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                widget.pendanaanPilihan.pekerjaan,
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                widget.pendanaanPilihan.sektor,
                                style: GoogleFonts.poppins(
                                    fontSize: 14
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                widget.pendanaanPilihan.akad,
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

                SizedBox(height: 15,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isVisibleResiko = !isVisibleResiko;
                          isVisibleRiwayat = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(165, 30),
                        primary: salur1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child:
                      Text(
                        "Resiko",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Spacer(),

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isVisibleRiwayat = !isVisibleRiwayat;
                          isVisibleResiko = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(165, 30),
                        primary: salur1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child:
                      Text(
                        "Riwayat",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 15,),

                Visibility(
                  visible: isVisibleResiko,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: salur1
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                Visibility(
                  visible: isVisibleRiwayat,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: salur1
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mitra belum memiliki riwayat pendanaan sebelumnya',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 300,),
              ],
            ),
            
            Container(
              padding: EdgeInsets.fromLTRB(30, 15, 30, 30),
              height: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0,
                  )
                ],
                color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pembayaran dari mitra',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              'Perkiraan total hasil',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              'Crowdfunding',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(height: 11,)
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Rp2230/Minggu',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              'Rp111500',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 15,),
                            LinearPercentIndicator(
                              width: 120,
                              lineHeight: 14.0,
                              percent: widget.pendanaanPilihan.persentasePendanaan/100,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              backgroundColor: Colors.grey,
                              progressColor: salur1,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(width: 50,),
                                  Text(
                                    widget.pendanaanPilihan.sisaHariPendanaan.toString(),
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    ' hari lagi',
                                    style: GoogleFonts.poppins(
                                        fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Row(
                      children: [
                        SizedBox(width: 50,),
                        Text(
                          'Sisa Plafond Rp',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          widget.pendanaanPilihan.sisaPlafond.toString(),
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          ' dari total Rp',
                          style: GoogleFonts.poppins(
                              fontSize: 11
                          ),
                        ),
                        Text(
                          widget.pendanaanPilihan.plafond.toString(),
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          child: InkWell(
                            onTap: minus,
                            child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 75,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2
                                    )
                                ),
                                child: Icon(
                                  Icons.remove,
                                )
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2
                              )
                          ),
                          child: Text(
                            nominalPendanaanAwal.toString(),
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Spacer(),
                        Material(
                          child: InkWell(
                            onTap: add,
                            child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 75,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2
                                    )
                                ),
                                child: Icon(
                                  Icons.add,
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanPembayaran(pendanaanTerpilih: widget.pendanaanPilihan,)));
                      nominalPendanaanAkhir = nominalPendanaanAwal;
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(335, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child:
                    Text(
                      "Mulai Pendanaan",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
