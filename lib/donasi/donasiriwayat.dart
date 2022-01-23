import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datadonasiriwayat.dart';
import 'package:tugasakhirsalur/donasi/donasibca.dart';
import 'package:tugasakhirsalur/donasi/donasibni.dart';
import 'package:tugasakhirsalur/donasi/donasibri.dart';
import 'package:tugasakhirsalur/donasi/donasibsi.dart';
import 'package:tugasakhirsalur/donasi/donasimandiri.dart';
import 'package:tugasakhirsalur/donasi/donasihalamanakhir.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';


class donasiRiwayatmenu extends StatelessWidget {
  const donasiRiwayatmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: salur1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Donasi Saya'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child:ListView.separated(
          separatorBuilder: (context, index) => Divider(
            height: 20,
          ),
          scrollDirection: Axis.vertical,
          itemCount: donasiriwayat.length,
          itemBuilder: (BuildContext context, int index) {
            RiwayatDonasi riwayatdon = donasiriwayat[index];
            return RawMaterialButton(
              onPressed: () {
                switch (riwayatdon.statusDonasi) {
                  case 'Sukses': {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => donasiHalamanAkhir()));
                  }break;
                  case 'Menunggu Pembayaran': {
                    switch (riwayatdon.bankpilihanDonasi){
                      case 'BCA': {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBCA()));
                        riwayatdon.nominalDonasi;
                      }break;
                      case 'Mandiri': {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => donasiMandiri()));
                        riwayatdon.nominalDonasi;
                      }break;
                      case 'BNI': {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBNI()));
                        riwayatdon.nominalDonasi;
                      }break;
                      case 'BRI': {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBRI()));
                        riwayatdon.nominalDonasi;
                      }break;
                      case 'BSI': {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBSI()));
                        riwayatdon.nominalDonasi;
                      }break;
                    }
                  }break;
                  case 'Gagal': {
                    // do nothing.
                  }break;
                }
              },
              child: Card(
                elevation: 10,
                child: Container(
                  height: 110,
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
                        backgroundImage: ExactAssetImage(riwayatdon.imgPenggalang),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            riwayatdon.namaDonasi,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            riwayatdon.namaPenggalang,
                            style: TextStyle(
                                fontSize: 13
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Total donasi Rp',
                                style: TextStyle(
                                  fontSize: 13
                                ),
                              ),
                              Text(
                                riwayatdon.nominalDonasi.toString(),
                                style: TextStyle(
                                    fontSize: 13
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            child: Text(
                              riwayatdon.statusDonasi,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: salur10
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            riwayatdon.tanggalDonasi,
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
