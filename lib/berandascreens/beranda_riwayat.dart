import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/donasiriwayatlistview.dart';
import 'package:tugasakhirsalur/widget/penarikanriwayatlistview.dart';
import 'package:tugasakhirsalur/widget/pendanaanriwayatlistview.dart';
import 'package:tugasakhirsalur/widget/transferriwayatlistview.dart';

class BerandaRiwayat extends StatefulWidget {

  @override
  _BerandaRiwayatState createState() => _BerandaRiwayatState();
}

class _BerandaRiwayatState extends State<BerandaRiwayat> {
  bool isVisiblePendanaan = false;
  bool isVisibleDonasi = false;
  bool isVisibleTransfer = false;
  bool isVisiblePenarikan = false;

  bool buttonPendanaanPressed = false;
  bool buttonDonasiPressed = false;
  bool buttonTransferPressed = false;
  bool buttonPenarikanPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Penyalur'),
        centerTitle: true,
        backgroundColor: salur1,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: salur1,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    child: RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          isVisiblePendanaan = !isVisiblePendanaan;
                          isVisibleDonasi = false;
                          isVisibleTransfer = false;
                          isVisiblePenarikan = false;
                          buttonPendanaanPressed = !buttonPendanaanPressed;
                          buttonDonasiPressed = false;
                          buttonTransferPressed = false;
                          buttonPenarikanPressed = false;

                        });
                      },
                      child: Center(
                        child: Text(
                          'Pendanaan',
                          style: GoogleFonts.poppins(
                            color: buttonPendanaanPressed ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 80,
                    child: RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          isVisibleDonasi = !isVisibleDonasi;
                          isVisiblePendanaan = false;
                          isVisibleTransfer = false;
                          isVisiblePenarikan = false;
                          buttonDonasiPressed = !buttonDonasiPressed;
                          buttonPendanaanPressed = false;
                          buttonTransferPressed = false;
                          buttonPenarikanPressed = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          'Donasi',
                          style: GoogleFonts.poppins(
                            color: buttonDonasiPressed ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 80,
                    child: RawMaterialButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        setState(() {
                          isVisibleTransfer = !isVisibleTransfer;
                          isVisibleDonasi = false;
                          isVisiblePendanaan = false;
                          isVisiblePenarikan = false;
                          buttonTransferPressed = !buttonTransferPressed;
                          buttonPendanaanPressed = false;
                          buttonDonasiPressed = false;
                          buttonPenarikanPressed = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          'Kirim Uang',
                          style: GoogleFonts.poppins(
                            color: buttonTransferPressed ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 80,
                    child: RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          isVisiblePenarikan = !isVisiblePenarikan;
                          isVisibleDonasi = false;
                          isVisiblePendanaan = false;
                          isVisibleTransfer = false;
                          buttonPenarikanPressed = !buttonPenarikanPressed;
                          buttonPendanaanPressed = false;
                          buttonDonasiPressed = false;
                          buttonTransferPressed = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          'Tarik Uang',
                          style: GoogleFonts.poppins(
                              color: buttonPenarikanPressed ? Colors.white : Colors.black,
                              fontWeight: FontWeight.w600,
                            fontSize: 12
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),

            Visibility(
              visible: isVisiblePendanaan,
              child: Flexible(
                child: Container(
                    child: pendanaanRiwayatListView()
                ),
              ),
            ),

            Visibility(
              visible: isVisibleDonasi,
              child: Flexible(
                child: Container(
                    child: donasiRiwayatListView()
                ),
              ),
            ),

            Visibility(
              visible: isVisibleTransfer,
              child: Flexible(
                child: Container(
                    child: transferRiwayatCarousel()
                ),
              ),
            ),

            Visibility(
              visible: isVisiblePenarikan,
              child: Flexible(
                child: Container(
                    child: PenarikanRiwayatListView()
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
