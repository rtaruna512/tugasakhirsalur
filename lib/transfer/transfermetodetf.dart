import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/transfer/transferbsi.dart';
import 'package:tugasakhirsalur/transfer/transferbca.dart';
import 'package:tugasakhirsalur/transfer/transferbni.dart';
import 'package:tugasakhirsalur/transfer/transferbri.dart';
import 'package:tugasakhirsalur/transfer/transfermandiri.dart';
import 'package:google_fonts/google_fonts.dart';

class transferMetodeTF extends StatefulWidget {
  @override
  _transferMetodeTFState createState() => _transferMetodeTFState();
}

class _transferMetodeTFState extends State<transferMetodeTF> {
  Color salur1 = const Color(0xff014753);

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferBCA()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferMandiri()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferBNI()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferBRI()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferBSI()));
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
