import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datapendanaanriwayat.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaansukses.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';


class pendanaanRiwayatmenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Transaksi Pendanaan Saya',style: TextStyle(color: Colors.black),),
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child:ListView.separated(
          separatorBuilder: (context, index) => Divider(
            height: 20,
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
                  case 'Menunggu Pembayaran': {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanPembayaran(pendanaanTerpilih: ,)));
                  }break;
                  case 'Gagal': {
                    // do nothing.
                  }break;
                }
              },
              child: Card(
                elevation: 10,
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
                        radius: 45,
                        backgroundImage: ExactAssetImage(riwayatdana.avatarURL),
                      ),
                      SizedBox(width: 10,),
                      Container(
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total plafond Rp',
                                  style: TextStyle(
                                      fontSize: 13
                                  ),
                                ),
                                Text(
                                  riwayatdana.nominalPendanaanAkhir.toString(),
                                  style: TextStyle(
                                      fontSize: 13
                                  ),
                                ),
                              ],
                            ),
                          ],
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
        ),
      ),
    );
  }
}
