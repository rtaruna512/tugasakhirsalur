import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datapendanaanriwayat.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanmitrasaya.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class pendanaanRiwayatListView extends StatelessWidget {
  const pendanaanRiwayatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        height: 15,
        thickness: 0,
      ),
      scrollDirection: Axis.vertical,
      itemCount: pendanaanriwayat.length,
      itemBuilder: (BuildContext context, int index) {
        RiwayatPendanaan riwayatdana = pendanaanriwayat[index];
        return RawMaterialButton(
          onPressed: () {
            switch (riwayatdana.statusPendanaan) {
              case 'Menunggu Pembayaran': {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MitraSaya(riwayatdanapilihan: riwayatdana)));
              }break;
              case 'Gagal': {
                // do nothing.
              }break;
            }
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: salur8,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: ExactAssetImage(riwayatdana.avatarURL),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            riwayatdana.namaDebitor,
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sisa Pokok',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: Colors.black,
                                            fontWeight: FontWeight.w600
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'Rp',
                                            ),
                                            TextSpan(
                                                text: (riwayatdana.nominalPendanaanAkhir - (riwayatdana.pembayaranke * riwayatdana.nominalPokok)).toString(),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Bagi Hasil',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: riwayatdana.persenbagihasil.toString(),
                                            ),
                                            TextSpan(
                                              text: '%',
                                            ),
                                          ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),

                          LinearPercentIndicator(
                            padding: EdgeInsets.all(5),
                            width: 135,
                            lineHeight: 10,
                            percent: (riwayatdana.pembayaranke / riwayatdana.tenor),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            backgroundColor: Colors.grey,
                            progressColor: salur1,
                          ),
                          RichText(
                            text: TextSpan(
                                style: GoogleFonts.poppins(
                                    fontSize: 9,
                                    color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Pembayaran ke ',
                                  ),
                                  TextSpan(
                                    text: riwayatdana.pembayaranke.toString(),
                                  ),
                                  TextSpan(
                                    text: ' dari ',
                                  ),
                                  TextSpan(
                                    text: riwayatdana.tenor.toString(),
                                  ),
                                ]
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          child: Text(
                            riwayatdana.statusPendanaan,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: salur10
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          riwayatdana.tanggalPendanaan,
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          child: Text(
                            riwayatdana.keteranganpembayaran,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: salur10
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
