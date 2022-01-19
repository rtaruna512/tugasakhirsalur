import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/data/datapendanaan.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanpembayaran.dart';
import 'package:google_fonts/google_fonts.dart';

class pendanaanKeterangan extends StatefulWidget {
  final Pendanaan pendanaanPilihan;

  pendanaanKeterangan({required this.pendanaanPilihan});
  @override
  _pendanaanKeteranganState createState() => _pendanaanKeteranganState();
}

class _pendanaanKeteranganState extends State<pendanaanKeterangan> {
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color salur3 = const Color(0x80d2ddaf);
  Color salur4 = const Color(0xff79834e);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);
  Color salurwidgetbg = const Color(0xb3D2DDAF);
  Color salurwidgetbg2 = const Color(0x14B3C824);

  int nominalPendanaan = 0;

  void add () {
    setState(() {
      if (nominalPendanaan != widget.pendanaanPilihan.sisaPlafond) {
        nominalPendanaan = nominalPendanaan + 50000;
      }
    });
  }

  void minus () {
    setState(() {
      if (nominalPendanaan != 0) {
        nominalPendanaan = nominalPendanaan - 50000;
      }
    });
  }

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
                  height: 100,
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
                        mainAxisAlignment: MainAxisAlignment.start,
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

                SizedBox(height: 25,),

                Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: salurwidgetbg2,
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

                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
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

                Container(
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
                SizedBox(height: 500,),
              ],
            ),
            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              height: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10.0,
                      offset: Offset(0, 0))
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
                            Text(
                              'Perkiraan total hasil',
                              style: GoogleFonts.poppins(
                                  fontSize: 14
                              ),
                            ),
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
                            Text(
                              'Rp111500',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
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
                            nominalPendanaan.toString(),
                            style: GoogleFonts.poppins(),
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

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanPembayaran(pendanaanTerpilih: widget.pendanaanPilihan,)));
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
