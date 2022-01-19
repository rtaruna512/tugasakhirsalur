import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/donasi/donasimain.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanmain.dart';
import 'package:tugasakhirsalur/profile/profilemain.dart';
import 'package:tugasakhirsalur/transfer/transfermain.dart';
import 'package:tugasakhirsalur/widget/donasicarousel.dart';
import 'package:google_fonts/google_fonts.dart';



class BerandaMenuMain extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BerandaMenuMain>{
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(0),
          child: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                        color: salur1,
                      ),
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Halo, Penyalur',
                                      style: GoogleFonts.poppins(
                                          fontSize: 17,
                                          color: Colors.grey
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'Selamat datang!',
                                      style: GoogleFonts.poppins(
                                          fontSize: 27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileMenu()));
                                  },
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: ExactAssetImage('assets/images/5894220152385821-Male_6.jpg'),
                                  ),
                                )
                              ],
                            ),
                          ),

                          Spacer(),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 320,
                                  height: 200,
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment(0, 0),
                                          colors: <Color>[
                                            gradientGLight,
                                            gradientGdark
                                          ]
                                      )
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Total Aset Pendanaan',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white
                                            ),
                                          ),
                                          SizedBox(height: 15,),
                                          Text(
                                            'Rp250.000',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 27
                                            ),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/images/mastercard.png',
                                            height: 45,
                                            width: 45,
                                            fit: BoxFit.fitWidth,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),

                                SizedBox(width: 15,),

                                Container(
                                  width: 320,
                                  height: 200,
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment(0, 0),
                                          colors: <Color>[
                                            gradientGLight,
                                            gradientGdark
                                          ]
                                      )
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Anda sudah berbagi',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white
                                            ),
                                          ),
                                          SizedBox(height: 15,),
                                          Text(
                                            'Rp250.000',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 27
                                            ),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/images/mastercard.png',
                                            height: 45,
                                            width: 45,
                                            fit: BoxFit.fitWidth,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Spacer(),

                          SizedBox(height: 54,),
                        ],
                      ),
                    ),


                    Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .52,
                        left: 15,
                        right: 15,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 9,vertical: 7),
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                blurRadius: 5,
                                color: Colors.black26
                            )]
                        ),
                        child: Row(
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanBeranda()));
                              },
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          border: Border.all(
                                              color: salur1,
                                              width: 3
                                          )
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),

                                        child: Image.asset(
                                          'assets/images/cvc.png',
                                          scale: 10,),
                                      ),
                                    ),
                                    Text('Pendanaan')
                                  ],
                                ),
                              ),
                            ),

                            Spacer(),

                            RawMaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DonasiBeranda()));
                              },
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          border: Border.all(
                                              color: salur1,
                                              width: 3
                                          )
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),

                                        child: Image.asset(
                                          'assets/images/pngwing.png',
                                          scale: 10,),
                                      ),
                                    ),
                                    Text('Donasi')
                                  ],
                                ),
                              ),
                            ),

                            Spacer(),

                            RawMaterialButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TransferBeranda()));
                              },
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: salur1,
                                            width: 3
                                        )
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),

                                      child: Image.asset(
                                        'assets/images/cbb.png',
                                        scale: 10,),
                                    ),
                                  ),
                                  Text('Kirim Uang')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Ayo Salurkan',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                donasiCarousel(),
              ]
          )
      ),
    );
  }
}