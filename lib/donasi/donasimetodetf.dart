import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/donasi/donasibni.dart';
import 'package:tugasakhirsalur/donasi/donasibri.dart';
import 'package:tugasakhirsalur/donasi/donasibsi.dart';
import 'package:tugasakhirsalur/donasi/donasimandiri.dart';
import 'package:tugasakhirsalur/donasi/donasibca.dart';
import 'package:google_fonts/google_fonts.dart';

class DonasiMetodeTF extends StatefulWidget {
  @override
  _DonasiMetodeTFState createState() => _DonasiMetodeTFState();
}

class _DonasiMetodeTFState extends State<DonasiMetodeTF> {
  Color salur1 = const Color(0xff014753);
  Color salurwidgetbg = const Color(0x80D2DDAF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: salur1,
        title: Text('Pilih Metode Transfer'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen,
                ),
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Transfer Bank',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Text('(Proses 1-10 menit)')
                  ],
                ),
              ),

              SizedBox(height: 40),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBCA()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/bca.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'BCA',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiMandiri()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/mandiri.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'Mandiri',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBNI()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/bni.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'BNI',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBRI()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/bri.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'BRI',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBSI()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/bsi.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'BSI',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
