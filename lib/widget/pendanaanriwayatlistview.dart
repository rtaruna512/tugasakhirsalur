import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datapendanaanriwayat.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanriwayatpembayaran.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaansukses.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

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
              case 'Sukses': {
                Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanSukses(pendanaanStatus: riwayatdana)));
              }break;
              case 'Menunggu pembayaran': {
                Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanriwayatPembayaran(pendanaanriwayatTerpilih: riwayatdana)));
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
              height: 125,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: salur8,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: ExactAssetImage(riwayatdana.avatarURL),
                  ),
                  Flexible(
                    child: Container(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Pendanaan',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            riwayatdana.namaDebitor,
                            style: TextStyle(
                                fontSize: 13
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Total Plafond ',
                                      style: TextStyle(
                                      )
                                  ),
                                  TextSpan(
                                      text: 'Rp${riwayatdana.nominalPendanaanAkhir.toString()}',
                                      style: TextStyle(
                                      )
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        child: Text(
                          riwayatdana.statusPendanaan,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: salur10
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        riwayatdana.tanggalPendanaan,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      )
                    ],
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
