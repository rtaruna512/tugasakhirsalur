import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/data/datatransferriwayat.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/transfer/transfercek.dart';
import 'package:tugasakhirsalur/transfer/transfersukses.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';


class transferRiwayatCarousel extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        height: 15,
        thickness: 0,
      ),
      scrollDirection: Axis.vertical,
      itemCount: transferriwayat.length,
      itemBuilder: (BuildContext context, int index) {
        RiwayatTransfer riwayattf = transferriwayat[index];
        return RawMaterialButton(
          onPressed: () {
            if (riwayattf.statusTransfer == 'Sukses') {
              Navigator.push(context, MaterialPageRoute(builder: (context) => transferSukses(transferStatus: riwayattf)));
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) => transferCek()));
            }
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: salur8,
                  borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              riwayattf.bankAsal,
                              style: GoogleFonts.poppins(
                                fontSize: 15
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 20,
                            ),
                            Text(
                              riwayattf.bankTujuan,
                              style: GoogleFonts.poppins(
                                  fontSize: 15
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        riwayattf.namaTujuan,
                        style: GoogleFonts.poppins(
                            fontSize: 14
                        ),
                      ),
                      Text(
                        riwayattf.tanggalTransfer,
                        style: GoogleFonts.poppins(
                            fontSize: 13
                        ),
                      ),
                    ],
                  ),

                  Spacer(),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Rp${riwayattf.nominalTransfer.toString()}',
                        style: GoogleFonts.poppins(
                            fontSize: 16
                        ),
                      ),

                      SizedBox(height: 5,),

                      Text(
                        riwayattf.statusTransfer,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: salur10
                        ),
                      ),

                      SizedBox(height: 5,),
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
