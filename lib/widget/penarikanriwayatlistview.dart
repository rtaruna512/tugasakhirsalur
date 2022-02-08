import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/data/datapenarikanriwayat.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class PenarikanRiwayatListView extends StatelessWidget {
  const PenarikanRiwayatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        height: 15,
        thickness: 0,
      ),
      scrollDirection: Axis.vertical,
      itemCount: penarikanriwayat.length,
      itemBuilder: (BuildContext context, int index) {
        RiwayatPenarikan riwayattarik = penarikanriwayat[index];
        return Card(
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
                    Text(
                      riwayattarik.jenisPenarikan,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            riwayattarik.bankAsal,
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          ),
                          Text(
                            riwayattarik.bankTujuan,
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      riwayattarik.namaPengguna,
                      style: GoogleFonts.poppins(
                          fontSize: 14
                      ),
                    ),
                    Text(
                      riwayattarik.tanggalPenarikan,
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
                      'Rp${riwayattarik.nominalPenarikan.toString()}',
                      style: GoogleFonts.poppins(
                          fontSize: 16
                      ),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      riwayattarik.statusPenarikan,
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
        );
      },
    );
  }
}
