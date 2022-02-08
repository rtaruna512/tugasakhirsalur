import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/data/datapendanaan.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanketerangan.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class pendanaanCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        height: 20,
      ),
      scrollDirection: Axis.vertical,
      itemCount: pendanaantujuan.length,
      itemBuilder: (BuildContext context, int index) {
        Pendanaan pendanaan = pendanaantujuan[index];
        return RawMaterialButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanKeterangan(pendanaanPilihan: pendanaan,)));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
              ),

              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: ExactAssetImage(pendanaan.avatarURL),
                      ),
                      SizedBox(height: 5,),
                      Column(
                        children: [
                          Text(
                            'Crowdfunding',
                            style: GoogleFonts.poppins(
                                fontSize: 12
                            ),
                          ),
                          LinearPercentIndicator(
                            width: 100,
                            lineHeight: 10,
                            percent: ((pendanaan.plafond - pendanaan.sisaPlafond) / pendanaan.plafond),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            backgroundColor: Colors.grey,
                            progressColor: salur1,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 40,),
                              Text(
                                pendanaan.sisaHariPendanaan.toString(),
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
                          )
                        ],
                      ),
                    ],
                  ),

                  SizedBox(width: 10,),

                  Flexible(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            pendanaan.namaDebitor,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),

                          SizedBox(height: 5,),

                          Text(
                            pendanaan.namaUsaha,
                            style: GoogleFonts.poppins(
                                fontSize: 12
                            ),
                          ),

                          SizedBox(height: 5,),

                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            elevation: 5,
                            child: Container(
                              width: 210,
                              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: salur12,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sisa Plafond',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12
                                        ),
                                      ),

                                      SizedBox(height: 5,),

                                      Text(
                                        'Tenor',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12
                                        ),
                                      ),

                                      SizedBox(height: 5,),

                                      Text(
                                        'Bagi Hasil',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.black
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Rp',
                                              ),
                                              TextSpan(
                                                text: pendanaan.sisaPlafond.toString(),
                                              )
                                            ]
                                        ),
                                      ),

                                      SizedBox(height: 5,),

                                      RichText(
                                        text: TextSpan(
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.black
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: pendanaan.tenor.toString(),
                                              ),
                                              TextSpan(
                                                text: ' Minggu',
                                              )
                                            ]
                                        ),
                                      ),

                                      SizedBox(height: 5,),

                                      RichText(
                                        text: TextSpan(
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.black
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: pendanaan.persenbagihasil.toString(),
                                              ),
                                              TextSpan(
                                                text: '%',
                                              )
                                            ]
                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 5,),

                        ],
                      ),
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
