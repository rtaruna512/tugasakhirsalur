import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/backgroundpainter.dart';
import 'package:google_fonts/google_fonts.dart';

class halamanUtama extends StatelessWidget {
  const halamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(0),
            child: Stack(
              children: [
                BackgroundPainter(),

                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 60),
                  child: Column(
                    children: <Widget>[
                      Spacer(),

                      Image.asset(
                        'assets/images/appicon.png',
                        height: 300,
                      ),

                      Spacer(),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                primary: salur1
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'BUAT AKUN',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, 'halaman_regis');
                            },
                          )
                      ),

                      SizedBox(height: 20,),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'MASUK',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, 'halaman_login');
                            },
                          )
                      ),

                      SizedBox(height: 50,),
                    ],
                  ),
                ),
              ],
            )
        )
    );
  }
}
